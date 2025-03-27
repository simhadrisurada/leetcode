class Solution {
public:
    int check(long long int partA,long long int partA_length){
        if (partA > partA_length/2){
            return 0;
        }
        else{
            return -1;
        }
    }
    int minimumIndex(vector<int>& nums) {
        map<int,int> hash;
        for(auto i : nums){
            if(hash[i] >= 1)hash[i]++;
            else{hash[i] = 1;}
        }
        long long int max_first = -1,max_second = -1;
        for(auto i : hash){
           if(max_second < i.second){
                max_second = i.second;
                max_first = i.first;
           }

        }
        vector<int> A;

        for(int i = 0;i < nums.size();i++){
            if( nums[i] == max_first){
                    A.push_back(1);
            }
            else{
                A.push_back(0);
            }
            if(i!=0)A[i]+=A[i-1];

        }
        
        long long int last = A[A.size() - 1];
        for(int i = 0;i < A.size();i++){
           if(check(A[i],i+1) == 0&&check(last - A[i],A.size() - i -1) == 0){
            return i;
           }
        }
       return -1;
    }
};