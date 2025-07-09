class Solution {
public:
int bin(vector<int> arr,int target){
    int low = 0,high = arr.size() - 1;
    while(low <= high){
        int mid = (low + high)/2;
        if(arr[mid] < target){
            low = mid + 1;
        }
        else{
            high = mid - 1;
        }
        
    }
return low ;

}


    vector<int> countSmaller(vector<int>& nums) {
        vector<int> arr;
        for(auto i : nums){
            arr.push_back(i);
        }
        vector<int> ans;
        sort(arr.begin(),arr.end());
        for(auto i : nums){
           int n = bin(arr,i);
            ans.push_back(n);
            arr.erase(arr.begin() + n);
        }

        return ans;
    }
};