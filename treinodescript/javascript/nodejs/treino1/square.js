exports.area = function(width) { return width * width; };
exports.perimeter = function(width) { return 4 * width; };

const square = require('./square'); // Aqui exigimos () o nome do arquivo sem a extensão de arquivo (opcional) .js
console.log('The area of a square with a width of 4 is ' + square.area(4));

module.exports = {
    area: function(width) {
      return width * width;
    },
  
    perimeter: function(width) {
      return 4 * width;
    }
  };

console.log('First');
console.log('Second');

setTimeout(function() {
  console.log('First');
}, 3000);
console.log('Second');

