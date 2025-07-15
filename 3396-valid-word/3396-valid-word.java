class Solution {
    public boolean isValid(String word) {
        int  spe = 0,ch = 0,dig = 0,vow = 0,con = 0;
        for(int i =0 ;i < word.length(); i++){
            if((word.charAt(i) >= 'a'&& word.charAt(i) <= 'z') || (word.charAt(i) >= 'A'&& word.charAt(i) <= 'Z') ){
                ch += 1;
                if(word.charAt(i) == 'a' || word.charAt(i) == 'i'||word.charAt(i) == 'o' || word.charAt(i) == 'e' || word.charAt(i) == 'u'){
                    vow += 1;
                }
                else if(word.charAt(i) == 'A' || word.charAt(i) == 'I'||word.charAt(i) == 'O' || word.charAt(i) == 'E' || word.charAt(i) == 'U'){
                    vow += 1;
                }
                else{
                    con+=1;
                }
            }
            else if(word.charAt(i) >= '0' && word.charAt(i) <= '9'){
                dig+= 1;
            }
            else{
                spe+=1;
            }
        }
     
        if( word.length() >=3 && vow >= 1 && con >= 1&&spe == 0){
            return true ;
        }
        else{
            return false;
        }
        
    }
}