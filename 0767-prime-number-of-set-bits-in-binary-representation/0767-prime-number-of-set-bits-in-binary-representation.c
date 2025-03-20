int dummy[1000001] = {0},u = 0;

void run(){
dummy[0] = 1;
dummy[1] = 1;
for(int i =0;i < 1000001;i++){
if(dummy[i] == 0){
    for(int j = i+i;j<1000001;j+=i)dummy[j] = 1;
}

}

u = 1;

}
int count(int n){
int c = 0;
while(n != 0){
if(n&1 == 1)c+=1;
n = n>>1;
}
    return c;
}
int countPrimeSetBits(int left, int right) {
if(u == 0)run();
int ans = 0;
while(left <= right){
if(dummy[count(left)] == 0)ans+=1;
    left+=1;
}



 return ans;   
}