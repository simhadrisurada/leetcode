int m = 0;
void  solve (int arr[], int length, int index, int subset[]) {
    if (index == length) {
        int n = 0;
        for (int i = 0; i < length; i++) {
            if (subset[i]) {
                n = n^arr[i];
            }
        }
        m += n;
        return;
    }
    subset[index] = 1;
    solve(arr, length, index + 1, subset);
    subset[index] = 0;
   solve(arr,length, index + 1, subset);
}
int subsetXORSum(int* nums, int numsSize) {
    int subset[numsSize];
   for(int i = 0;i < numsSize;i++)subset[i] = 1; 
        solve(nums,numsSize,0,subset);
        int n = m;m = 0;
   return n;
    
}