class Solution {
public:
    int run(string s,int x,int y,char a,char b){
        string ch = "";
        int ans = 0 ;
        for(int i= 0 ;  i<s.size() ;i++ ){
            if(s[i] == a){
                    ch+= a;
            }
            else if(s[i] == b){
                if(ch.size() != 0){
                    if(ch[ch.size() - 1] == a){
                        ans += x;
                        ch.pop_back();
                    }
                    else{
                        ch += b;
                    }
                }
                else{
                    ch += b;
                }
            }
            else {
                ans += cal(y,ch);
                ch = "";
            }
        }
        ans += cal(y,ch);
        return ans;
    }
    int cal(int x,string str){
        string s = "";int ans = 0;
        for(int i = 0;i < str.size();i++){
            if(s.size() == 0){
                s+=str[i];
            }
            else if(s[s.size() - 1] != str[i]){
                ans += x;
                s.pop_back();
            }
            else{
                s+=str[i];
            }
        }
        return ans;
    }
    int maximumGain(string s, int x, int y) {
        int n1 = run(s,x,y,'a','b');
        int n2 = run(s,y,x,'b','a');
        return n1 > n2 ? n1 : n2 ;
    }
};