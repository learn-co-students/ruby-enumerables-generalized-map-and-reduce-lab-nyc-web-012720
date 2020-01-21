




function map(arr, yield) {
  yield(1);
}

map([], function (one) {
  console.log(one)
})