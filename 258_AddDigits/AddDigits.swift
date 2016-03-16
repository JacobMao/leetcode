class Solution {
    func addDigits(num: Int) -> Int {
        if num < 10 {
            return num
        }

        var myNum = num
        var numbers = [Int]()

        while myNum > 0 {
            numbers.append(myNum % 10)
            myNum = myNum / 10
        }

        return self.addDigits(numbers.reduce(0, combine: +))
    }

    func addDigitsWithoutLoop(num: Int) -> Int {
        if num <= 0 {
            return num
        }

        return 1 + ((num - 1) % 9)
    }
}
