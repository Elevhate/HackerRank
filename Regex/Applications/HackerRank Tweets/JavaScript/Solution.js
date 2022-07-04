function processData(input) {
    let lines = input.split('\n').slice(1);
    let matches = lines.filter(line => line.toLowerCase().match(/.*hackerrank.*/));
    console.log(matches.length);
} 

process.stdin.resume();
process.stdin.setEncoding("ascii");
_input = "";
process.stdin.on("data", function (input) {
    _input += input;
});

process.stdin.on("end", function () {
   processData(_input);
});
