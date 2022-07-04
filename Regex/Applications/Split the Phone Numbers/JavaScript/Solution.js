function processData(input) {
    let numbers = input.split('\n').slice(1);
    for(let i = 0; i < numbers.length; i++) {
        let splits = numbers[i].split(/ |\-/);
        console.log("CountryCode=" + splits[0] + ",LocalAreaCode=" + splits[1] + ",Number=" + splits[2]);
    }
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