class Solution {
public:
    int hammingWeight(uint32_t n) {
        int count = 0;
        uint32_t inputNumber = n;
        while (inputNumber > 0) {
            inputNumber &= inputNumber - 1;
            ++count;
        }

        return count;
    }
};
