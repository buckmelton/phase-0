// Release 4 User Story:
// As a user, I want to get the sum of all the numbers in a list.
function sum(list) {

  return list.reduce(function(previousValue, currentValue, currentIndex, array) {
                return previousValue + currentValue;
              });

}

// Release 4 User Story:
// As a user, I want to get the mean (also known as the average)
// of all the numbers in a list.
function mean(list) {
  return sum(list) / list.length;
}

// Note from Person #4 (Buck): I believe the function below, 'median'
// may be broken?  I can't know for sure since, per the instructions,
// I don't have access to the original spec/tests. But I do know that
// the function doesn't always calculate the median.  According to the
// instructions, I'm not fixing it and how it functions currently will
// be reflected in the User Story.

// Release 4 User Story:
// As a user, I want to supply a list of numbers.  If the number of
// numbers in my list is odd, I want to know the length of the list
// divided by two.  If the number of numbers in my list is even,
// I want to know the median of the list.
function median(list) {
  var ordered_list = list.sort(function(a,b) {return a - b;} );
  var midPoint = ordered_list.length / 2;
  if(ordered_list.length % 2 != 0)
    return midPoint;
  else
    return (ordered_list[midPoint - 1] + ordered_list[midPoint]) / 2;
}

// Person 4's (Buck's) Driver Code
var list1 = [0];
var list2 = [1,1,1,1,1,1];
var list3 = [1,2,3,4,5,6];
var list4 = [1500,2000,2500,3000,3500,4000,4500,5000,5500];
var list5 = [1234567890, 89764537277838, 1000000000000000000000];
var list6 = [1,1,1,1,1];

console.log("The sums are:");
console.log(sum(list1));
console.log(sum(list2));
console.log(sum(list3));
console.log(sum(list4));
console.log(sum(list5));
console.log(sum(list6));
console.log("");
console.log("The means are:");
console.log(mean(list1));
console.log(mean(list2));
console.log(mean(list3));
console.log(mean(list4));
console.log(mean(list5));
console.log(mean(list6));
console.log("");
console.log("The medians are:");
console.log(median(list1));
console.log(median(list2));
console.log(median(list3));
console.log(median(list4));
console.log(median(list5));
console.log(median(list6));
