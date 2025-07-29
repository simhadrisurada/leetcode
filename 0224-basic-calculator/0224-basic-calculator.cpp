class Solution {
public:
int cal(int n1,int n2,char ch){
    if(ch == '+') return n1+n2;
    return n1-n2;
}
string give(string str){
    string s = "";
    for(int i = 0; i < str.size();i++){
        if(str[i] != ' '){
            s+=str[i];
        }
    }
    return s;
}

    int calculate(string s) {
        s = give(s);
        cout << s ;
        vector<int> snum;
        vector<char> onum;
        int i = 0,num= 0 ;
        while( i < s.size()){
           if(s[i] >= '0' && s[i] <= '9'){
         
                num = num*10 + (s[i] - '0');
            }
            else if(s[i] == '('){
                onum.push_back('(');
            }
            else if(s[i] == ')'){
                while(onum[onum.size() - 1] != '('){
                    char curr_op = onum[onum.size() - 1];onum.pop_back();
                    int n1 = snum[snum.size() - 1];snum.pop_back();
                    num = cal(n1,num,curr_op);
                }
                onum.pop_back();
            }
            else if(s[i] == '+' || s[i] == '-'){
                if(onum.size() != 0 && onum[onum.size() - 1] == '-'){
                    snum.push_back(num*-1);
                    onum.pop_back();
                    onum.push_back('+');
                }
                else{
                    snum.push_back(num);
                }
                num = 0;
                onum.push_back(s[i]);
            }
            i+=1;
        }
   
    snum.push_back(num);
    num = snum[0];
       for(int i = 0 ;i < onum.size();i++){
        num = cal(num,snum[i+1],onum[i]);
       }
   
        return num;
    }
};