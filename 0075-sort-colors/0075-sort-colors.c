void sortColors(int* nums, int numsSize) {
    while(1){
        int c=0;
        for(int i=1;i<numsSize;i++){
            if(nums[i]<nums[i-1]){
                int t= nums[i];
                nums[i]=nums[i-1];
                nums[i-1]=t;   
                c++;         }
        }
        if(c==0){break;}
    }
}