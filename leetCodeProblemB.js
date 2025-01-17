function maxProfit(stockPrice) {
    let minPrice = Infinity, maxProfit = 0;

    for (let price of stockPrice) {
        minPrice = Math.min(minPrice, price); // Track the minimum price
        maxProfit = Math.max(maxProfit, price - minPrice); // Calculate profit
    }

    return maxProfit;
}

// Example 1
let stockPrice1 = [5, 1, 4, 3, 6, 2];
console.log(maxProfit(stockPrice1)); // Output: 5

// Example 2
let stockPrice2 = [8, 5, 3, 3, 0];
console.log(maxProfit(stockPrice2)); // Output: 0

let stockPrice3 = [10, 1, 3, 5, 2];
console.log(maxProfit(stockPrice3)); //Expected 4

/* Example 1 with [5, 1, 4, 3, 6, 2] assume initial price is very high therefore minPrice = Infinity, then maxProfit = 0 
In the first iteration price = 5, then update it to minPrice -> minprice = 5 checks for the previous price if its lower or not in this case
5 > infinity, which is true, then go to the function maxProfit which (price) - (minPrice) in this case 5 - 5 = 0. 
For each price we update the minPrice to track the lowest price so far, then we keep subtracting it from current price.
So in example 1 Tommy buys stock priced at 1$ and sells at 6$ profiting 5$, whereas in Example 2 theres a 0 already which is telling,
and in another example we start with the highest and ends with second lowest which in this case Tommy buys at 1 and continue the calculation
until eventually it reached the selling point of 5 which profits 4$ then it compares with the next day price which is 2 which profits at 2$
thus the max profit Tommy could get is 4$.
*/