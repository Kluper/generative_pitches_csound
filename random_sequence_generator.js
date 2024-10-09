const path = require('path');
const Max = require('max-api');
const fs = require('fs');

// Gaussian random sequence generator with likelihood argument
function generateGaussianRandomSequence(length, mean = 0, stdev = 1, likelihood = 0.5) {
    let sequence = [];
    for (let i = 0; i < length; i++) {
        // Generate a Gaussian random number
        let randomValue = gaussianRandom(mean, stdev);

        // Convert Gaussian random value to 0 or 1 based on the likelihood argument
        // A higher likelihood means the threshold for getting a 1 is lower
        let threshold = gaussianRandom(mean, stdev);  // A Gaussian random threshold
        sequence.push(randomValue > threshold * likelihood ? 1 : 0);
    }
    return sequence;
}

// Function to generate a normally distributed random number using the Box-Muller transform
function gaussianRandom(mean = 0, stdev = 1) {
    let u1 = Math.random();
    let u2 = Math.random();
    let z0 = Math.sqrt(-2.0 * Math.log(u1)) * Math.cos(2.0 * Math.PI * u2);
    return z0 * stdev + mean;
}

// Example: Generate a 24-step Gaussian sequence with a higher likelihood of 1
Max.addHandler('random', (length, min, max, orientation) => {  
    
    let seqRand = generateGaussianRandomSequence(length, min, max, orientation);
        Max.outlet(seqRand.join(","));
});
