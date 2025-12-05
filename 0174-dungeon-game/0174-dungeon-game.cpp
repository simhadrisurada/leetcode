class Solution {
public:
    int check(vector<vector<int>> d, int k){
         int m = d.size(),n = d[0].size();
        d[0][0] += k ;
         
        for(int i =1;i < d.size();i++){
            int n1 = d[i-1][0];
            if(n1 <= 0) d[i][0] = -1;
            else d[i][0] += n1;
        }
   
         for(int j  = 1; j < d[0].size();j++){
             int n1 = d[0][j-1];
            if(n1 <= 0) d[0][j] = -1;
            else d[0][j] += n1;
            }
     
        for(int i =1;i < d.size();i++){
            for(int j  = 1; j < d[0].size();j++){
                int n1 = d[i][j-1];
                int n2 =  d[i-1][j];
                if(n1  > 0 && n2 > 0){
                    d[i][j] += max(n1,n2);
                }
                else if(n1 > 0){
                    d[i][j] += n1;
                }
                else if(n2 > 0){
                    d[i][j] += n2;
                }
                else {
                    d[i][j] = -1;
                }
            }
        }
    
        return d[m-1][n-1];
    }
    int calculateMinimumHP(vector<vector<int>>& d) {
        int low = 1;
        int high  =0 ;
         for(int i =0;i < d.size();i++){
            for(int j  = 0; j < d[0].size();j++){
                if(d[i][j] <= 0) high += d[i][j];
            }
         }
         high = high*-1;
         cout << high;
         while(low <= high){
            int mid = low + high;
            mid/=2;
            if(check(d,mid) <= 0) low = mid+ 1;
            else high = mid - 1;
         }
       return low;
    }
};