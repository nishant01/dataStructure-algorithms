// Solution 1: Compare string with a reversed version
function palindrome1(str) {
  let reversed = str.split('').reverse().join('');
  return reversed === str;
}

// Solution 2: Iterate on each character and compare it with the oposite character in the string
function palindrome2(str) {
  return str.split('').every((char, i) => {
    return char === str[str.length - i - 1];
  });
}

module.exports = palindrome1;
