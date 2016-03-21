class Solution {
    func isAnagram(s: String, _ t: String) -> Bool {
        if s.characters.count != t.characters.count {
            return false
        }

        var cList = [Int](count: 26, repeatedValue: 0)

        var currentIndex = s.unicodeScalars.startIndex
        let endIndex = s.unicodeScalars.endIndex
        let sUnicodeScalars = s.unicodeScalars
        let tUnicodeScalars = t.unicodeScalars
        while currentIndex != endIndex {
            let value1 = Int(sUnicodeScalars[currentIndex].value) - 97
            let value2 = Int(tUnicodeScalars[currentIndex].value) - 97

            cList[value1] += 1
            cList[value2] -= 1

            currentIndex = currentIndex.successor()
        }

        return !(cList.contains { (value) -> Bool in
            return value != 0
        })
    }
}
