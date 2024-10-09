const path = require('path');
const Max = require('max-api');
const fs = require('fs');

// Gaussian random sequence generator with likelihood and bounded values
function generateGaussianRandomSequence(length, minVal, maxVal, likelihood) {
    let sequence = [];
    
    for (let i = 0; i < length; i++) {
        // Generate a Gaussian random number centered around 0.5 (midpoint of 0 to 1)
        let randomValue = gaussianRandom(0.5, 0.15);  // Standard Gaussian with a mean of 0.5 and small deviation

        // Apply the likelihood to skew toward minVal or maxVal
        if (Math.random() < likelihood) {
            randomValue = Math.min(randomValue, gaussianRandom(0.25, 0.1)); // Skew toward lower values
        } else {
            randomValue = Math.max(randomValue, gaussianRandom(0.75, 0.1)); // Skew toward higher values
        }

        // Map the random value (which is between 0 and 1) to the desired range (minVal to maxVal)
        let scaledValue = minVal + (randomValue * (maxVal - minVal));

        // Ensure that no value is below minVal or above maxVal
        scaledValue = Math.max(minVal, Math.min(scaledValue, maxVal));

        sequence.push(scaledValue.toFixed(2));  // Optionally limit to 2 decimal places
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

// Max message handler with 4 arguments: amount, min, max, likelihood
Max.addHandler('random', (amount, minVal, maxVal, likelihood) => {  
    let sequence = generateGaussianRandomSequence(amount, minVal, maxVal, likelihood);
    Max.outlet(sequence.join(","));
});
