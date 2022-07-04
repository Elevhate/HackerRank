function processData(input) {
    let validate = pair => {
       if(pair.match("^\\([+-]?((90(\\.0+)?)|([1-8][0-9](\\.[0-9]+)?)|([0-9](\\.[0-9]+)?)),\\s*[+-]?(((([1-9][0-9])|([0-9]))(\\.[0-9]+)?)|(1((80(\\.0+)?)|([0-7][0-9](\\.[0-9]+)?))))\\)$")) {
           return "Valid";
       } else {
           return "Invalid";
       }
   };
   let pairs = input.split('\n').slice(1);
   let validations = pairs.map(validate);
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