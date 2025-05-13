class Solution {
public:
    vector<int> findEvenNumbers(vector<int>& digits1) {
        map<int,int> mapi1;
        for(int i =0;i < digits1.size();i++){
         if(mapi1[digits1[i]]){
            mapi1[digits1[i]]+=1;
         }
         else{
            mapi1[digits1[i]] = 1;
         }
        }
    vector<int> digits;
    for(auto i : mapi1){
        if(i.second >= 3){
            digits.push_back(i.first);
             digits.push_back(i.first);
              digits.push_back(i.first);
        }
       else if(i.second == 2){
            digits.push_back(i.first);
             digits.push_back(i.first);
        }
        else{
            digits.push_back(i.first);
        }
    }




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