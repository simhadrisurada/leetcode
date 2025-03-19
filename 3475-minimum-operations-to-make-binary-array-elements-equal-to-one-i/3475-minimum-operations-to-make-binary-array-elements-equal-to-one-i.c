void exchange(int* nums, int numsSize,int i){
int j = i;
while(j<=i+2){
if(nums[j] == 0){
    nums[j] = 1;
}
else{
    nums[j] = 0;
}
j+=1;
}
}

int minOperations(int* nums, int numsSize) {
    int ans = 0;
for(int i = 0 ; i < numsSize-2;i++){
    if(nums[i] == 0){
        exchange(nums,numsSize,i);
        ans+=1;
    }
}
for(int i = 0;i<numsSize;i++){
    if(nums[i] == 0)return -1;
}

return ans;


    
}