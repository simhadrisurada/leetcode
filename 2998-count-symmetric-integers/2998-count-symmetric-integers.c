bool split(int num,int len){
    int ans1 = 0;
for(int i = 0;i < len;i++){
    ans1+=num%10;
    num/=10;
}
int ans2 = 0;
while(num!=0){
ans2+=num%10;
    num/=10;
}
return ans1==ans2;
}
int countSymmetricIntegers(int low, int high) {
    int ans = 0;
while(low <= high){
if(low >=10 &&low <100){
    if(split(low,1) == true){
        ans+=1;
    }
}
if(low >=1000 &&low <10000){
    if(split(low,2) == true){
        ans+=1;
    }
}
low+=1;
}
    return ans;
}