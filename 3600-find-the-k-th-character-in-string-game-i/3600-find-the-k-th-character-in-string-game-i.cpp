class Solution {
public:
    char kthCharacter(int k) {
        string str = "a";
    
    while(str.size() <= k){
        int len = str.size();
        int  i = 0;
        while(i < len){
            char ch = str[i] ;
            if(ch == 'z'){
                ch = 'a';
            }
            else{
                ch+=1;
            }
            str += ch;i++;
        }
        cout  << str;
       
    }
        return str[k-1];
        // str = "a" len = 2
        // loop  0 to < len
        // ch = str[0] = "a" = 97 == > 0,1
        /// ch = 98 = "b" 
        // str += ch == >  str  = "ab"


        
    }
};