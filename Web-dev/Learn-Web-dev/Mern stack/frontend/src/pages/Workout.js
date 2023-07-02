    import axios from 'axios';
    import React, { useEffect, useState } from 'react';
    import Button from '../components/Button';
    import '../index.css';

    const Workout = () => {
    const [workouts, setWorkouts] = useState(null);
    const [isModalOpen, setIsModalOpen] = useState(false);
    const [isEditModalOpen, setIsEditModalOpen] = useState(false);
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
            //alert('Workouts loaded');
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
        setWorkouts([...workouts, response.data]);
        console.log(response.data); // handle the successful response
        // update the view
        

        closeModal();
        } catch (error) {
        console.error(error); // handle the error response
        }
    };

    const openEditModal = (id) => {
        setIsEditModalOpen(true);
       
    };
    const closeEditModal = () => {
        setIsEditModalOpen(false);
    };
    const handleFormSubmitEdit = (id) => {
        //e.preventDefault();
        try {
        const response = axios.patch(
            `http://localhost:4000/api/workouts/${id}`,
            workoutData
        );
        console.log("idddddddddddddddd"+id); // handle the successful response
        console.log(response.data); // handle the successful response
        // update the view after edit ie: reprint the workouts
        setWorkouts([...workouts, response.data]);
            
        closeEditModal();
        } catch (error) {
        console.error(error); // handle the error response
        }
    };




    return (
      <>
      {workouts ? (
        <div className="workouts-container">
          {workouts.map((workout) => (
            <div key={workout._id} className="workout">
              <h2>Name: {workout.name}</h2>
              <h3>Sets: {workout.sets}</h3>
              <h3>Load: {workout.load}</h3>
              <h3>id: {workout._id}</h3>
              <h3>created at: {new Date(Date.parse(workout.createdAt)).toLocaleString(undefined, {
                    year: 'numeric',
                    month: 'numeric',
                    day: 'numeric',
                    hour: 'numeric',
                    minute: 'numeric',
                    second: 'numeric',
                    })}</h3>
              
        {isEditModalOpen && ( (

            <div className='modal-overlay'>
            <div className='modal-content'>
                <h2>Edit Workout</h2>
                <form onSubmit={ ()=>{
                    const id = localStorage.getItem('id');
                    localStorage.removeItem('id');
                    console.log("idddddddddddddddd out ----- "+ id);
                    handleFormSubmitEdit(id) }}>
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
              <button type='submit' className='button2' >Edit</button>
              <button onClick={closeModal} className='button2' >Cancel</button>
            </form>
          </div>
        </div>
        ))}
            <button  className='button2' onClick={() => {
             openEditModal();
             localStorage.setItem('id', workout._id)
            }
             }>Edit</button>
            
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
            <form onSubmit={handleFormSubmit(localStorage.getItem('id') )}>
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
