// arithmetics.pegjs
start
  = expression

expression
  = head:number tail:(_ ("+" / "-") _ number)* {
      return tail.reduce((result, element) => {
        if (element[1] === "+") { return result + element[3]; }
        if (element[1] === "-") { return result - element[3]; }
      }, head);
    }

number
  = digits:[0-9]+ { return parseInt(digits.join(""), 10); }

_ "whitespace"
  = [ \t\n\r]*