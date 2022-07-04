function processData(input) {
    let lines = input.split('\n').slice(1);
    let ipValidation = address => {
        if(address.match(new RegExp("\\b(((2[0-5][0-5])|(1[0-9][0-9])|(\\b[1-9][0-9]\\b)|(\\b\\d\\b))\\.){3}((2[0-5][0-5])|(1[0-9][0-9])|(\\b[1-9][0-9]\\b)|(\\b\\d\\b))\\b"))) {
            return "IPv4";
        } else if(address.match(new RegExp("([a-f0-9]{1,4}:){7}\\b[0-9a-f]{1,4}\\b"))) {
            return "IPv6";
        } else {
            return "Neither";
        }
    };
    let validations = lines.map(ipValidation);
    console.log(validations.join('\n'));
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
