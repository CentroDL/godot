var fibs = [1, 2];
var sum  = 0;

while (fibs[(fibs.length - 1)] <= 4000000) {
  var newNum = fibs[fibs.length - 1] + fibs[fibs.length - 2];
  fibs.push(newNum);
}

for(var i = 0, len = fibs.length -1 ; i < len; i++){
  if (fibs[i] % 2 == 0) {
    sum += fibs[i];
  }
}

console.log("The answer is " + sum);
