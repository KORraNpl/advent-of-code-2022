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

for line in lines_arr {
    if line != "" {
        current_elf_calories += Int(line.trimmingCharacters(in: .newlines))!
    } else {
        if current_elf_calories > max_calories {
            max_calories = current_elf_calories
        }
        current_elf_calories = 0
    }
}

print("Max calories = \(max_calories)")
