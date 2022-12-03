import Foundation

let data: String

do {
    data = try String(contentsOfFile: "input.txt", encoding: .utf8)
} catch {
    print(error)
    exit(1)
}

let lines_arr = data.components(separatedBy: .newlines)

var max_calories: Int = 0
var current_elf_calories: Int = 0
var elves: [Int] = []

for line in lines_arr {
    if line != "" {
        current_elf_calories += Int(line.trimmingCharacters(in: .newlines))!
    } else {
        elves.append(current_elf_calories)
        current_elf_calories = 0
    }
}

let sorted_elves = elves.sorted(by: >)
let top_three_calories = sorted_elves[0] + sorted_elves[1] + sorted_elves[2]

print("Top three calories = \(top_three_calories)")
