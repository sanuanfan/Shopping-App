function getQueryAnswers(cache_entries, queries) {
    // Create a map to store the cache entries
    let cache = new Map();

    // Iterate over each cache entry and store it in the map
    for (let entry of cache_entries) {
        let [timestamp, key, value] = entry;
        if (!cache.has(key)) {
            cache.set(key, []);
        }
        cache.get(key).push({ timestamp, value });
    }

    // Sort the cache entries for each key based on timestamp
    for (let [key, values] of cache) {
        values.sort((a, b) => a.timestamp.localeCompare(b.timestamp));
    }

    // Function to find the value for a given key and timestamp
    function findValue(key, timestamp) {
        if (!cache.has(key)) {
            return null;
        }
        let values = cache.get(key);
        for (let entry of values) {
            if (entry.timestamp === timestamp) {
                return entry.value;
            }
        }
        return null;
    }

    // Process each query and get the result
    let result = [];
    for (let query of queries) {
        let [key, timestamp] = query;
        let value = findValue(key, timestamp);
        result.push(value);
    }

    return result;
}

// Example usage:
let cache_entries = [
    ["12:30:22", "a2er5i80", "125"],
    ["09:07:47", "io09ju56", "341"],
    ["01:23:09", "a2er5i80", "764"]
];

let queries = [
    ["a2er5i80", "01:23:09"],
    ["io09ju56", "09:07:47"]
];

console.log(getQueryAnswers(cache_entries, queries)); // Output: ["764", "341"]
