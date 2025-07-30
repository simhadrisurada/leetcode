class Solution {
public:
    int longestSubarray(vector<int>& nums) {
        int length = 0,max = 0,cnt = 0;
        for(int i = 0;i < nums.size();i++){
                if(max < nums[i]) max = nums[i];
        }
        for(int i =0 ;i < nums.size();i++){
            if(nums[i] == max) cnt += 1;
            else cnt = 0;
            if(cnt > length) length = cnt;
        }
        if(cnt > length) length = cnt;
        return length;
    }
};