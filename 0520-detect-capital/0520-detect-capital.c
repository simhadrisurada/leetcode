bool detectCapitalUse(char* word) {
    int i = 0,c = 0,ind = 0;
    while(i < strlen(word)){
        if(word[i] >='A'&& word[i] <= 'Z'){
            c+=1;ind = i;
        }
        i+=1;
    }
    if(ind == 0 && c == 1)return true;
    if(c == 0)return true;
    if(c == strlen(word))return true;
return false;    
}