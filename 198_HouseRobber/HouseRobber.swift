class Solution {
    func rob(nums: [Int]) -> Int {
        if nums.isEmpty {
            return 0
        }

        if nums.count == 1 {
            return nums[0]
        }

        if nums.count == 2 {
            return max(nums[0], nums[1])
        }

        var dp1 = nums[0]
        var dp2 = max(nums[0], nums[1])
        for i in 2..<nums.count {
            let amount = nums[i]

            if i % 2 == 0 {
                dp1 = max(dp1 + amount, dp2)
            } else {
                dp2 = max(dp2 + amount, dp1)
            }
        }

        return max(dp1, dp2)
    }
}
