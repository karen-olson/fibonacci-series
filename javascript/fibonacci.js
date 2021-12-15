function fibonacci(num) {
  let arr = [0, 1];
  let i = 2;

  while (i <= num) {
    newNumber = arr[0] + arr[1];
    arr[0] = arr[1];
    arr[1] = newNumber;
    i++;
  }

  return arr[1];
}

// Overarching strategy:
//    use an array to hold placeholder values for 2 numbers
//    sum the numbers, then replace the values so that you're tracking the most recent sum and the previous value
//    keep following this pattern until you reach the desired number
// Steps:
// create an array to hold two values. initially set them to 0 and 1
// iterate through the array num-1 times (or while the iterator is less than num)
// start the iterator at 2 because this is the "starting index" (you've already hard-coded the first 2 numbers in the sequence)
// calculate the sum of the values in arr
// move the second arr value to first space
// put the newNumber in the second space
// increment the iterator
// return the most recent newNumber

if (require.main === module) {
  // add your own tests in here
  console.log("Expecting: 0");
  console.log("=>", fibonacci(0));

  console.log("");

  console.log("Expecting: 1");
  console.log("=>", fibonacci(2));

  console.log("");

  console.log("Expecting: 55");
  console.log("=>", fibonacci(10));
}

module.exports = fibonacci;

// Please add your pseudocode to this file
// And a written explanation of your solution
