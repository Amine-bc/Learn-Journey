const { default: mongoose } = require('mongoose');
const WorkoutModule = require('../models/workoutModule');


// GET all workouts
const getAllWorkouts = async (req, res) => {
    try {
        const workouts = await WorkoutModule.find({})
        res.status(200).json(workouts)
    }catch(err){
        res.status(400).json({err})
    }
}

//GET a specific workout
// will use req.param

const getWorkout = async (req, res) => {
    const {id} = req.params
    if (! mongoose.Types.ObjectId.isValid(id)) return res.status(404).json()
    try {
        const workout = await WorkoutModule.findById(id)
        res.status(200).json(workout)
    }catch(err){
        res.status(400).json({err})
    }
}

// create workout

const createWorkout = async (req, res) => {
    const {name, sets, load} = req.body
    try {
        const workout = await WorkoutModule.create({name, sets, load})
        res.status(200).json(workout)
    }catch(err){
        res.status(400).json({err})
    }
}

// delete workout by id

const deleteWorkout = async (req, res) => {
    const {id} = req.params
    if (! mongoose.Types.ObjectId.isValid(id)) return res.status(404).json()
    try {
        const workout = await WorkoutModule.findByIdAndDelete(id)
        res.status(200).json(workout)
    }catch(err){
        res.status(400).json({err})
    }
}

// update a workoout by id

const updateWorkout = async (req, res) => {
    const {id} = req.params
    if (! mongoose.Types.ObjectId.isValid(id)) return res.status(404).json()
    try {
        const workout = await WorkoutModule.findByIdAndUpdate(id, req.body)
        res.status(200).json(workout)
    }catch(err){
        res.status(400).json({err})
    }
}

module.exports = {
    getAllWorkouts,
    getWorkout,
    createWorkout,
    deleteWorkout,
    updateWorkout
}