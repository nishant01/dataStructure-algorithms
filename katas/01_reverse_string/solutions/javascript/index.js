// Solution 1: simple decompose string into an array and reverse it
function reverse1(str) {
  return str.split('').reverse().join('');
}

// Solution 2: Iterate in the string and create a new reversed string
function reverse2(str) {
  let reversed = '';

  for (let character of str) {
    reversed = character + reversed;
  }

  return reversed;
}

// Solution 3: Use a reducer on an array and compose a new string reversed
function reverse3(str) {
  return str.split('').reduce((reversed, character) => {
    return character + reversed;
  }, '')
}

module.exports = reverse1;
