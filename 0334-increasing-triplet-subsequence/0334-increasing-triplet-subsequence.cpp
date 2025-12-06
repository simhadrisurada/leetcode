class Solution {
public:
    bool increasingTriplet(vector<int>& nums) {
        vector<int> arr1,arr2(nums.size());
        int now = nums[0];
        for(int i=0;i<nums.size();i++){
            now =min(nums[i], now);
        //    cout << now << " ";
            arr1.push_back(now);
        }
     //   cout << "\n" ;
        now = nums[nums.size() - 1];
        for(int i = nums.size() - 1;i >=0 ;i-- ){
            now  = max(now, nums[i]);
           // cout << now << " ";
            arr2[i] = now;
        }
     //   cout << "\n";
        for(int i =0;i < nums.size() ;i++){
            if(nums[i] != arr1[i] && nums[i] != arr2[i]) return true;
        }
        return false;
    }
};