func getAllWords(_ dictionary: [String.SubSequence], _ requiredCharacter: Character, _ board: Set<Character>) -> [String.SubSequence] {
  dictionary.filter { $0.allSatisfy { board.contains($0) || requiredCharacter == $0 } && $0.count >= 4 && $0.contains(requiredCharacter) }
}