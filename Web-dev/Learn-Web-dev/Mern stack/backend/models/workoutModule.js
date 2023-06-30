const mongoose = require('mongoose');
const Shema = mongoose.Schema;

const workoutSchema = new Shema({
    name: {
        type: String,
        required: true
        ,unique: true},
    sets: {
        type: String,
        required: true
    },
    load: {
        type: String,
        required: true
    }
}, {timestamps: true});

module.exports = mongoose.model('Workout', workoutSchema);