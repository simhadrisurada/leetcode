bool canConstruct(char* ransomNote, char* magazine) {
    int arr1[26] = {0},arr2[26] = {0};
    for(int i = 0;i < strlen(ransomNote);i++){
        arr1[ransomNote[i] - 'a']+=1;
    }
     for(int i = 0;i < strlen(magazine);i++){
        arr2[magazine[i] - 'a']+=1;
    }
    for(int i = 0 ;i < 26;i++){
        if(arr2[i]<arr1[i])return false;
    }

    return true;
}