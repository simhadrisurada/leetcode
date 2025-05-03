int check(int* tops, int topsSize, int* bottoms, int bottomsSize){
    int top = tops[0],down = bottoms[0];
    int top_swap = 0,down_swap = 0;

    for(int i = 0;i<topsSize;i++){
        if(top == tops[i] && bottoms[i] != top){
            down_swap += 1;
        }
        else if(top != tops[i] && bottoms[i] == top){
            top_swap += 1;
        }
        else if(top != tops[i] && bottoms[i] != top){
            return -1;
        }

    }
    if(top_swap < down_swap)return top_swap;
    return down_swap;
}




int minDominoRotations(int* tops, int topsSize, int* bottoms, int bottomsSize) {
    int n = check(tops,topsSize,bottoms,bottomsSize);
    int m = check(bottoms,topsSize,tops,bottomsSize);
    if (n == -1) return m;
return n;
   
}