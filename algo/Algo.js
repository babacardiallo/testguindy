function closestToZero(ts) {
    return ts.reduce(function (prev, curr) {
        return Math.abs((Math.abs(curr - 0) < Math.abs(prev - 0) ? curr : prev));
    });
}

console.log(closestToZero([-2,5,2,9,2]));
