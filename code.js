function generateRandomNumber(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
}

function shuffleArray(array) {
    return array.sort(() => Math.random() - 0.5);
}

const numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
const shuffled = shuffleArray([...numbers]);
const randomNum = generateRandomNumber(1, 100);

console.log("Random number:", randomNum);
console.log("Shuffled array:", shuffled);