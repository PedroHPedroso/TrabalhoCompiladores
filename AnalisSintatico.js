const parser = require('./arithmetics-parser');

const input = "3 + 5 - 2";
const result = parser.parse(input);

console.log("Resultado da expressão '${input}' é: ${result}");