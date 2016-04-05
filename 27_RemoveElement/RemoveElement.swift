class Solution {
    func removeElement(inout nums: [Int], _ val: Int) -> Int {
        if nums.isEmpty {
            return 0
        }

        var leftIndex = 0
        var rightIndex = nums.count

        while leftIndex != rightIndex {
            if nums[leftIndex] != val {
                leftIndex += 1
            } else {
                rightIndex -= 1

                if nums[rightIndex] != val {
                    nums[leftIndex] = nums[rightIndex]
                }
            }
        }

        let removeCount = nums.count - rightIndex
        if removeCount >= 0 {
            nums.removeLast(removeCount)
        }

        return nums.count
    }
}

let s = Solution()
var nums = [2]
let ret = s.removeElement(&nums, 3)

print(nums)
print(ret)
