bool isAnagram(char* s, char* t) {
    int arr[26] = {0},arr2[26] = {0};
    for(int i = 0 ; i< strlen(s);i++){
        arr[s[i] - 'a']+=1;
    }
    for(int i = 0 ; i< strlen(t);i++){
        arr2[t[i] - 'a']+=1;
    }
for(int i = 0 ; i < 26;i++){
    if(arr[i] != arr2[i])return false;
}
return true;
    
}