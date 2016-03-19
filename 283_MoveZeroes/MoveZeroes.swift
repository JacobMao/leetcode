class Solution {
    func moveZeroes(inout nums: [Int]) {
        var currentIndexOfZero = -1

        for var i = 0; i < nums.count; {
            let currentValue = nums[i]
            if currentValue == 0 {
                if currentIndexOfZero == -1 {
                    currentIndexOfZero = i
                }
            } else {
                if currentIndexOfZero != -1 {
                    swap(&nums[currentIndexOfZero], &nums[i])
                    currentIndexOfZero += 1
                }
            }

            i += 1
        }
    }
}
