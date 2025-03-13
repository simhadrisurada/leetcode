int bin1(int nu[],int len){
int low = 0,high = len-1;
while(low<high){
int mid = low+high;mid/2;
if(nu[mid] < 0){low = mid+1;}
else{
    high = mid-1;
}
}
return low;
}
int bin2(int nu[],int len){
int low = 0,high = len-1;
while(low<high){
int mid = low+high;mid/2;
if(nu[mid] <= 0){low = mid+1;}
else{
    high = mid-1;
}
}
return low;
}
int max(int n,int m){
    if(m>n)return m;
    return n;
}




int maximumCount(int* nums, int numsSize) {
int index1 = bin1(nums,numsSize),index2 = bin2(nums,numsSize) ;

if(numsSize ==1&& nums[0] == 0){return 0;}//edgecase while using binary search algorithm
if(index1 < numsSize-1 && index2 < numsSize-1 && nums[index1]==nums[index2] && nums[index1] < 0)
{return max(index1+1,numsSize -index2-1);}//when the elements contain only -ve and +ve elements excluding zero

return max(index1,numsSize -index2);


}