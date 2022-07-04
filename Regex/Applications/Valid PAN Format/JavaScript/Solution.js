function processData(input) {
    let lines = input.split('\n').slice(1);
    let isPan = s => {
        if(s.match(/[A-Z]{5}\d{4}[A-Z]/)) {
            return "YES";
        } else {
            return "NO";
        }
    };
    console.log(lines.map(isPan).join('\n'));
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