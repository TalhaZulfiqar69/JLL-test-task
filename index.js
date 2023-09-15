// Implementation without ES6:
function averageWithoutES6() {
  if (arguments.length === 0) {
    return 0;
  }

  let sum = 0;
  for (let i = 0; i < arguments.length; i++) {
    sum += arguments[i];
  }

  return sum / arguments.length;
}

console.log(averageWithoutES6(3, 6));
console.log(averageWithoutES6(2, 4, 4, 5, 6, 8, 10));
console.log(averageWithoutES6());

// Implementation with ES6:
const averageWithES6 = (...numbers) => {
  if (numbers.length === 0) {
    return 0;
  }

  const sum = numbers.reduce((acc, num) => acc + num, 0);
  return sum / numbers.length;
};

console.log(averageWithES6(3, 6));
console.log(averageWithES6(2, 4, 4, 5, 6, 8, 10));
console.log(averageWithES6());
