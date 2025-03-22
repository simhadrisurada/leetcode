

class Solution {
public:
    int findCenter(vector<vector<int>>& edges) {
         map<int,int>mapi;
         
          for(int i = 0;i< edges.size();i++){
            mapi[edges[i][0]] = 0;
            mapi[edges[i][1]] = 0;
         }
         for(int i = 0;i< edges.size();i++){
            mapi[edges[i][0]] += 1;
            mapi[edges[i][1]] += 1;
         }
         for(auto i : mapi){
            if(i.second == edges.size())return i.first;
         }
         
         return -1;
    }
};