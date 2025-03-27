class Solution {
public:
    int check(int n,int ans){
        if(n == 0)return ans;
        return check(n/5,ans + (n/5));
    }
    int trailingZeroes(int n) {
        return check(n,0);
    }
};