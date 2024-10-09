const path = require('path');
const Max = require('max-api');
const fs = require('fs');

// Arrays for notes and 2D weights
let note = [
    [0.5, 0.529732, 0.561231, 0.594604, 0.629961, 0.667420, 0.707107, 0.749154, 0.793701, 0.840896, 0.890899, 0.973874, 1, 1.053500, 1.118034, 1.185185, 1.265625, 1.333333, 1.365853, 1.414214, 1.461538, 1.550725, 1.620156, 1.683620, 2.0]
];

// 2D array for weights: Each row is a different set of weights
let wheights = [
//  -8ve ,-7M  ,-7m  ,-6M ,-6m, -5te, -5d/-4ta, -4te ,-3M,-3m  ,-2ndM,-2m  , Uni ,2ndm  ,2ndM   , 3m ,3M  , 4te ,4tea, 5te ,6m , 6M ,7m,7M, 8ve
//  -12  , -11 , -10 , -9 , -8, -7  , -6      , -5   ,-4 , -3  , -2  , -1  , 0   ,1     , 2     ,  3 , 4  , 5   , 6  , 7   , 8 , 9  , 10, 11, 12
    [0.5 , 1   , 0.5 , 4  , 1 , 0.5 , 3       , 2    , 7 , 4   , 1   , 0   , 0.25, 0.5  , 0.5   ,  3 , 0.5, 2   , 3  , 2   , 1 , 3.5, 2 , 4 , 0.5  ], // Mode 0
    [0.25, 0.5 , 6   , 3  , 1 , 2.5 , 0       , 4    , 2 , 3   , 0.5 , 0.5 , 0.5 , 0    , 1     ,  1 , 1  , 3   , 4  , 4   , 3 , 4  , 3 , 1 , 0.25 ], // Mode 1
    [1   , 1.7 , 3   , 0.5, 5 , 3.5 , 2       , 0.5  , 1 , 6   , 1   , 0   , 0.5 , 0.5  , 0.25  ,  4 , 3  , 0   , 3  , 1   , 4 , 6  , 1 , 7 , 0.125], // Mode 2
    [1   , 0   , 3   , 0  , 1 , 6.5 , 0       , 1    , 0 , 6   , 0   , 1   , 1   , 0    , 3     ,  0 , 3  , 4   , 0  , 1   , 0 , 3  , 0 , 3 , 1.125], // ionien
    [0.5 , 1   , 0   , 4  , 0 , 5   , 0       , 4    , 3 , 0   , 4   , 0   , 1   , 4    , 0     ,  5 , 0  , 5   , 0  , 2.5 , 2 , 0  , 4 , 0 , 0.02 ], //phrygien
    [1   , 7   , 0   , 5  , 0 , 3   , 4       , 0    , 1 , 0   , 0.5 , 0   , 0.5 , 2    , 0     ,  2 , 0  , 0.5 , 0  , 1   , 6 , 0  , 4 , 0 , 0.2  ]  
];

// Function to normalize weights
function normalizeWeights(weights) {
    const total = weights.reduce((sum, weight) => sum + weight, 0); // Sum of all weights
    return weights.map(weight => weight / total); // Normalize each weight
}

// Function for weighted random selection
function weightedRandomSelection(note, wheights) {
    // Normalize the weights
    const normalizedWeights = normalizeWeights(wheights);
    
    // Generate a random number between 0 and 1
    const randomValue = Math.random();
    
    // Perform cumulative sum and select the corresponding note
    let cumulativeSum = 0;
    for (let i = 0; i < normalizedWeights.length; i++) {
        cumulativeSum += normalizedWeights[i];
        if (randomValue < cumulativeSum) {
            return i; // Return the corresponding note
        }
    }
    
    // In case something goes wrong, return the last note (shouldn't happen)
    return note[note.length - 1];
}

Max.addHandler('poids', (mode) => { 

    mode = mode || 0;
    
    // Ensure mode is within bounds
    if (mode >= wheights.length) {
        mode = 0;  // Fallback to mode 0 if the mode is out of range
    }
    
    const selectedNote = weightedRandomSelection(note[0], wheights[mode]);
    
    // Send the selected note back to Max
    Max.outlet(selectedNote);
});