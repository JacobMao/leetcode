class Solution {
    func removeDuplicates(inout nums: [Int]) -> Int {
        if nums.count < 2 {
            return nums.count
        }

        var index1 = 0
        var index2 = 1
        while index2 < nums.count {
            if nums[index1] != nums[index2] {
                nums.removeRange((index1 + 1)..<index2)
                index1 += 1
                index2 = index1 + 1
            } else {
                index2 += 1
            }
        }

        if index1 < (nums.count - 1) {
            nums.removeLast((nums.count - 1) - index1)
        }

        return nums.count
    }
}

let s = Solution()

var a = [1,1,2]
print(s.removeDuplicates(&a))
print(a)
