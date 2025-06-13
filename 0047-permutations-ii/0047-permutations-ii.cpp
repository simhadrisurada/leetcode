class Solution {
public:
 vector<int> swap(vector<int> nums,int i,int j){
       int m =  nums[i];
        nums[i] = nums[j];
        nums[j] = m;
        return nums;
    }
    vector<vector<int>> give(vector<int> nums,int i){
        vector<vector<int>> res;
        int j = i+1;
        while(j < nums.size()){
            res.push_back(swap(nums,i,j));
            j+=1;
        }
        return res;
    }
    vector<vector<int>> permuteUnique(vector<int>& nums) {
         vector<vector<int>> queue;
        queue.push_back(nums);
        int i = 0;
        while(i < nums.size()){
            int len = queue.size();
            int j = 0;
            while(j < len){
                vector<vector<int>> arr;
                arr = give(queue[j],i);
                queue.insert(queue.end(),arr.begin(),arr.end());
                j+=1;
            }
            i+=1;
        }
        map<vector<int>,int> mapi;
        for(auto k : queue){
            mapi[k] = 0;
        }
        vector<vector<int>> arr;
        for(auto k : mapi){
            arr.push_back(k.first);
        }

     return arr;
        
    }
};