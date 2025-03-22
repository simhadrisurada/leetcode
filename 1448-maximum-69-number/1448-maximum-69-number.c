int len(int n,int c)
{
if(n==0)return c;
return len(n/10,c+1);
}


int maximum69Number (int num) {
    int n = len(num,0);
    int k = num;
int arr[n];
for(int i = 0 ;i<n;i++){
    arr[n-1-i] = k%10;
    k/=10;
}
for(int i = 0 ;i<n;i++){
  if(arr[i] == 6){
    arr[i] = 9;
    break;
  }
}
int ans= 0;
for(int i = 0 ;i<n;i++){
    ans  = (ans*10) + arr[i];
}



    return ans;
    
}