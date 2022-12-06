import Foundation

let data: String

do {
    data = try String(contentsOfFile: "input.txt", encoding: .utf8)
} catch {
    print(error)
    exit(1)
}

var s = data
let markerLength = 14

for i in 1...data.count - markerLength + 1 {
    let lengthOfSet = Set(s.prefix(markerLength)).count
    if lengthOfSet == markerLength {
        print("Found marker at position \(i + markerLength - 1)")
        break
    }
    s = String(s.dropFirst(1))
}
