import java.util.Scanner;

public class anagram{

    static boolean isAnagram(String a, String b) {
        // Complete the function
        a = a.toUpperCase();
        b = b.toUpperCase();
        boolean ret = false; /*The String class is an immutable class whereas StringBuffer and StringBuilder classes are mutable. ... StringBuffer is synchronized i.e. thread safe. It means two threads can't call the methods of StringBuffer simultaneously. StringBuilder is non-synchronized i.e. not thread safe.*/
        StringBuilder c = new StringBuilder(b);
        if(a.length() == b.length()){
            for(int i=0;i<a.length();i++)
            {
                for(int j=0;j<c.length();j++){
                    if(a.charAt(i) == c.charAt(j)){
                        c.deleteCharAt(j);
                        
                        if(i == a.length()-1 && c.length()==0){
                         ret = true;
                         break;
                    }
                   break; //very important
                }
                
                
            }
        }
        
    }
    return ret;
    }

  public static void main(String[] args) {
    
        Scanner scan = new Scanner(System.in);
        String a = scan.next();
        String b = scan.next();
        scan.close();
        boolean ret = isAnagram(a, b);
        System.out.println( (ret) ? "Anagrams" : "Not Anagrams" );
    }
}
