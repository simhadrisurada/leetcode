class Solution {
    public int scoreOfString(String s) {
            int ans = 0;
        for(int i = 0;i < s.length() - 1;i++){
            int n = s.charAt(i),m = s.charAt(i+1);
            ans += (n > m ? n - m : m - n);
        }
        return ans;
    }
}