class Solution {
public:
int precedence(char ch){
    if(ch == '+' || ch == '-'){
        return 1;
    }
    return 2;
}
int cal(int n1,int n2,char ch){
    if(ch == '+') return n1 + n2;
    if(ch == '-') return n1 - n2;
    if(ch == '*') return n1*n2;
    return n1/n2;
 }
    int calculate(string s) {
        vector<int> num_stack;
        vector<char> ch_stack;
        int i = 0,num = 0;
        while(i < s.size()){
            if(s[i] >= '0' && s[i] <= '9'){
                num = num*10 + (s[i] - '0');
            }
            else if(s[i] != ' '){
                while(ch_stack.size() != 0 && precedence(ch_stack[ch_stack.size() - 1]) >= precedence(s[i])){
                    char ch = ch_stack[ch_stack.size() - 1];ch_stack.pop_back();
                    int n1 = num_stack[num_stack.size() - 1];num_stack.pop_back();
                    num = cal(n1,num,ch);
                }
                
                if(ch_stack.size() != 0 && ch_stack[ch_stack.size() - 1] == '-'){
                    num_stack.push_back(num*-1);
                    ch_stack.pop_back();
                    ch_stack.push_back('+');
                }
                else{
                    num_stack.push_back(num);
                }
                ch_stack.push_back(s[i]);
                num = 0;
            }
            i+=1;
        }
        //num_stack.push_back(num);
        for(auto i : num_stack){
            cout << i << " ";
        }
        cout << "\n";
        for(auto i : ch_stack){
            cout << i << " ";
        }
        
          while(ch_stack.size() != 0 ){
                    char ch = ch_stack[ch_stack.size() - 1];ch_stack.pop_back();
                    int n1 = num_stack[num_stack.size() - 1];num_stack.pop_back();
                    num = cal(n1,num,ch);
                }



        return num;
    }
};