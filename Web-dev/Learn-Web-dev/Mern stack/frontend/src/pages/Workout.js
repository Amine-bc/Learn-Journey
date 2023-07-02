    import axios from 'axios';
    import React, { useEffect, useState } from 'react';
    import Button from '../components/Button';
    import '../index.css';

    const Workout = () => {
    const [workouts, setWorkouts] = useState(null);
    const [isModalOpen, setIsModalOpen] = useState(false);
    const [workoutData, setWorkoutData] = useState({
        name: '',
        sets: 0,
        load: 0,
    });

    useEffect(() => {
        const fetchData = async () => {
        try {
            const response = await axios.get('http://localhost:4000/api/workouts/');
            setWorkouts(response.data);
            console.log(response.data);
        } catch (error) {
            console.error(error);
        }
        };
        fetchData();
    }, []);
    const deleteWorkout = async (id) => {
        try {
            console.log(id);
        const response = await axios.delete(`http://localhost:4000/api/workouts/${id}`
        );
        console.log(response.data); // handle the successful response
        //remove it from screen
        const newWorkouts = workouts.filter((workout) => workout._id !== id);
        setWorkouts(newWorkouts);
        } catch (error) {
        console.error(error); // handle the error response
        }
    };

    const openModal = () => {
        setIsModalOpen(true);
    };

    const closeModal = () => {
        setIsModalOpen(false);
    };

    const handleInputChange = (e) => {
        setWorkoutData({ ...workoutData, [e.target.name]: e.target.value });
    };

    const handleFormSubmit = async (e) => {
        e.preventDefault();
        try {
        const response = await axios.post(
            'http://localhost:4000/api/workouts/',
            workoutData
        );
        console.log(response.data); // handle the successful response
        closeModal();
        } catch (error) {
        console.error(error); // handle the error response
        }
    };

    return (
      <>
      {workouts ? (
        <div className="workouts-container">
          {workouts.map((workout) => (
            <div key={workout.id} className="workout">
              <h2>Name: {workout.name}</h2>
              <h3>Sets: {workout.sets}</h3>
              <h3>Load: {workout.load}</h3>
              <h3>id: {workout._id}</h3>
              <h3>created at: {workout.createdAt}</h3>
              <button className='button2'>Edit</button>
              <button className='button2' onClick={() => deleteWorkout(workout._id)}>Delete </button>
            </div>
          ))}
        </div>
      ) : (
        <div>Loading...</div>
      )}
      <Button url="/" className="button1" />
        
        
        <button className='button2' onClick={openModal}>
            Create Workout
        </button>

        {isModalOpen && (
        <div className='modal-overlay'>
          <div className='modal-content'>
            <h2>Create Workout</h2>
            <form onSubmit={handleFormSubmit}>
              <label>
                Name:
                <input
                  type='text'
                  name='name'
                  value={workoutData.name}
                  onChange={handleInputChange}
                />
              </label>
              <label>
                Sets:
                <input
                  type='number'
                  name='sets'
                  value={workoutData.sets}
                  onChange={handleInputChange}
                />
              </label>
              <label>
                Load:
                <input
                  type='number'
                  name='load'
                  value={workoutData.load}
                  onChange={handleInputChange}
                />
              </label>
              <button type='submit' className='button2' >Create</button>
              <button onClick={closeModal} className='button2' >Cancel</button>
            </form>
          </div>
        </div>
      )}
    </>
  );
};

    export default Workout;
