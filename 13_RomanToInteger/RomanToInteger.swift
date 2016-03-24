class Solution {
    static let dictOfRomanAndInt: [Character : Int] = [
    "I" : 1,
    "V" : 5,
    "X" : 10,
    "L" : 50,
    "C" : 100,
    "D" : 500,
    "M" : 1000,
    ]

    func romanToInt(s: String) -> Int {
        let reversedInput = s.characters.reverse()

        var preValue = 0
        return reversedInput.reduce(0) { (currentValue, chn) -> Int in
            guard let arabicNum = Solution.dictOfRomanAndInt[chn] else {
                return currentValue
            }

            let totalValue = (preValue > arabicNum) ? (currentValue - arabicNum) : (currentValue + arabicNum)

            preValue = arabicNum

            return totalValue
        }
    }
}
