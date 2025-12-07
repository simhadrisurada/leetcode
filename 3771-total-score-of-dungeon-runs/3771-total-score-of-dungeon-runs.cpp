class Solution {
public:
    int bin(vector<long long>& arr, vector<int>& orr,long long lim,long long  hp, int i){
        int low = 0,high = i;
        while(low <= high){
            int mid = low + high;
            mid =  mid/2;
            long long subArrSum = arr[i] - arr[mid] + orr[mid];
            if(hp - subArrSum >= lim){
                high = mid - 1;
            }
            else {
                low = mid + 1;
                }
        }
        return low;
    }
    long long totalScore(int hp, vector<int>& damage, vector<int>& requirement) {
        vector<long long> arr;// pre_sum array for subarray range sum
        long long ans = 0;
        arr.push_back(damage[0]);
        for(int i =1;i < damage.size();i++){
            arr.push_back(damage[i]+arr[i-1]);
        }

        vector<int>& d = damage;
        for(int i =0;i < d.size();i++){
      int now = bin(arr,damage,requirement[i],hp,i);
     //     int now = 0;
          ans += (i - now + 1);
        }
        return ans; 
        // subarraysum + binary search
        // reason for subarray sum : we should not skip the dungeon rooms
        // the presum array is in increasing order 
        // ( ^ _ ^ )
    }
};