function zeroCount(n) {
    let count = 0;
    while (n >= 5) {
        count += Math.floor(n / 5);
        n = Math.floor(n / 5);
    }
    return count;
}

// Example
// let n = 5 
let n = 23;
console.log(`N = ${n}, OUTPUT = `+ zeroCount(n)); 




