class Solution {
    func containsDuplicate(nums: [Int]) -> Bool {
        return nums.count > Set(nums).count
    }
}
