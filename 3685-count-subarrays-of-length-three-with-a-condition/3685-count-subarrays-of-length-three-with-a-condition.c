int countSubarrays(int* nums, int numsSize) {
int c = 0 ;
    for(int i = 1; i < numsSize - 1;i++){
    float k = nums[i-1] + nums[i+1] ;
        float kk = nums[i] / 2.0 ;
        if(k == kk){
            c+=1;
            
        }

        
    }

return c;
    
    
}