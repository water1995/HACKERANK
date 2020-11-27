import java.io.*;
import java.util.*;

public class solution{

    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        
        String A=sc.next();
        /* Enter your code here. Print output to STDOUT. */
        StringBuffer b = new StringBuffer(A);
        b.reverse();
        String c = b.toString();
        if(A.equals(c)){
            System.out.println("Yes");
        }else{
            System.out.println("No");
        }
        
    }
}