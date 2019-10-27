# Ch3

A small Swift package that exposes the [H3](https://github.com/uber/h3) to Swift. [SwiftH3](https://github.com/bdotdub/SwiftH3) is probably what you want to use. This library works directly with the C functions, whereas [SwiftH3](https://github.com/bdotdub/SwiftH3) is more idiomatic Swift.

## Example

```swift
# Create coordinate and get the H3 index
var coord = GeoCoord(lat: degsToRads(40.661), lon: degsToRads(-73.944))
let index = geoToH3(&coord, 10)

# Get the string representation of the index
let cString = strdup("")
h3ToString(self, cString, 17)
print("\(String(cString: cString!))")
```

------

Thanks to @s1ddok for his [Cpng](https://github.com/s1ddok/Cpng) repo, from which I used to figure out how to build this repo.
