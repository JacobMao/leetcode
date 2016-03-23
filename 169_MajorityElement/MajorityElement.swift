class Solution {
    func majorityElement(nums: [Int]) -> Int {
        var candidate = nums[0]
        var counter = 0

        nums.forEach {
            if counter == 0 {
                candidate = $0
                counter = 1
            } else {
                if candidate == $0 {
                    counter += 1
                } else {
                    counter -= 1
                }
            }
        }

        counter = 0
        nums.forEach {
            if candidate == $0 {
                counter += 1
            }
        }

        assert(counter >= (nums.count + 1) / 2)

        return candidate
    }
}
