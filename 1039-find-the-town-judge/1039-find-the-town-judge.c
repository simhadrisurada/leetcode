int findJudge(int n, int** trust, int trustSize, int* trustColSize) {
    if(n == 1)return 1;
    int arr[n+1][2];
    for(int i = 0 ;i<n+1;i++){
        arr[i][0] = 0;
        arr[i][1] = 0; 
    }
    for(int i = 0 ;i<trustSize;i++){
        arr[trust[i][0]][0] += 1;
        arr[trust[i][1]][1] += 1; 
    }

for(int i = 0 ;i<n+1;i++){
    if(arr[i][0] == 0 && arr[i][1] == n-1)return i;
    }
   

return -1;
}