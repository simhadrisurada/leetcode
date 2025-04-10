int bin(int a[],int length,int target)
{
    int low = 0,high = length - 1;
    while(low <= high){
        int mid = low + high;mid/=2;
        if (a[mid] == target) return 0;
        if(a[mid] < target){low = mid+1;}
        else { high = mid-1;}
    }
    return -1;
}
int findKthPositive(int* arr, int arrSize, int k) {
int i = 1,l = 0;
while(l<k){
    if(bin(arr,arrSize,i) == -1){l+=1;}
i+=1;
}
return i-1;
}