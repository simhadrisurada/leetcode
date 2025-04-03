int stack[10000];
int top = -1;
void pop(){
	top--;
}
void push(int n){
	top++;
	stack[top] = n;
}
int operator(char s[]){
	if(s[0] == '+')return 1;
	if(s[0] == '-')return 2;
	if(s[0] == '*')return 3;
	if(s[0] == '/')return 4;
    else return -1;
}
int operate(int m,int n,int s){
	if(s == 1)return m+n;
	if(s == 2)return m-n;
	if(s == 3)return m*n;
	if(s == 4)return m/n;
    return 0;
}

int evalRPN(char** tokens, int tokensSize) {
    for(int i = 0;i<tokensSize;i++){
        if(strlen(tokens[i]) == 1 && operator(tokens[i]) != -1){
            int n1 = stack[top];
            pop();
            int n2 = stack[top];
            pop();
            push(operate(n2,n1,operator(tokens[i])));
        }
        else{
         push(atoi(tokens[i]));
        }
    }

top--;
return stack[top+1];

    
}