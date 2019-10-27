# Ch3

A small Swift package that exposes the [H3](https://github.com/uber/h3) to Swift. [SwiftH3](https://github.com/bdotdub/SwiftH3) is probably what you want to use. This library works directly with the C functions, whereas [SwiftH3](https://github.com/bdotdub/SwiftH3) is more idiomatic Swift.

This currently works on macOS.

## Requirements

`brew install h3`

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

Thanks to @twostraws for this great blog post: https://www.hackingwithswift.com/articles/87/how-to-wrap-a-c-library-in-swift
