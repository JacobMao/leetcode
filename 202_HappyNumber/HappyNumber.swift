class Solution {
    func isHappy(n: Int) -> Bool {
        var calculativeResult = n
        while calculativeResult != 1 && calculativeResult != 4 {
            var currentNumber = calculativeResult
            calculativeResult = 0
            while currentNumber > 0 {
                let currentDigit = currentNumber % 10
                calculativeResult += currentDigit * currentDigit

                currentNumber /= 10
            }

            // let stringOfNumber = String(calculativeResult)
            // calculativeResult = stringOfNumber.characters.reduce(0) {
            //     let number = Int(String($1))!
            //     return $0 + number * number
            // }
        }

        return calculativeResult == 1
    }
}
