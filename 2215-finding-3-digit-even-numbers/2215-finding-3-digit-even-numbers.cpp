class Solution {
public:
    vector<int> findEvenNumbers(vector<int>& digits) {
        map<int,int> mapi;
        for(int i =0;i < digits.size();i++){
            for(int j = 0;j<digits.size();j++){
                for(int k = 0;k < digits.size();k++){
                    int n;
                    if(i!= j&& j!= k &&k!= i){
                         n = digits[i]*100 + digits[j]*10 + digits[k];
                    }
                    if(n >= 100 && n <= 999 &&(mapi[n])){
                        mapi[n] = 0;
                    }
                }
            }
        }
        vector<int> arr;
        for(auto i : mapi){
            if(i.first%2 == 0)arr.push_back(i.first);
        }
        return arr;
    }
};