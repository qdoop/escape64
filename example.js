

var escape64=require('./escape64');

var x,y,z;

x='aaaaaaaaaaa+/+jldapam/qmmmavvm/qvqvmfvm=';

y=escape64.encode(x);

z=escape64.decode(x);

console.log(x);
console.log(y);
console.log(z);

console.log(x==z);