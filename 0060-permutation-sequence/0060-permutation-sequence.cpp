class Solution {
public:
    int flag = 0;
    string give(string str,char ch1,char ch2){
        int i = 0;
        while(i < str.size()){
            if(str[i] == ch1){
                str[i] = ch2;
            }
            else if(str[i] == ch2){
                str[i] = ch1;
            }
            i+=1;
        }
        return str;
    }
    vector<string> run(int n,int k,vector<string>& arr,int now){
        if(now >= n){
            return arr;
        }
     arr = run(n,k,arr,now+1);
     if(flag == 1) return arr;
     int i = now;
     int j = 0;
    while(i < n && flag == 0){
        while(j < arr.size() && arr[j][now-1]  == i + '0'&& flag == 0 ){
            string str = arr[j];
             arr.push_back(give(arr[j],'0' + i,'0' + i + 1));
            if(arr.size() == k){flag = 1;}
            j+=1;
        }
        i+=1;
    }
    return arr;
    }
    string getPermutation(int n, int k) {
        string str = "";
        for(int i =0;i < n;i++){
            str+=('0' + i+1);
        }
        vector<string> arr ;
        arr.push_back(str);
        run(n,k,arr,1);
      flag  =0;
     return arr[k-1];   
    }
};