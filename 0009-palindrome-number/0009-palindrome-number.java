class Solution {
    public boolean isPalindrome(int x) 
    {
        String s=String.valueOf(x);
        StringBuilder sb=new StringBuilder(s);
        String h=sb.reverse().toString();
        if(h.equals(s))
        {
            return true;
        }
        else
        {
            return false;
        }
    }
}