import java.util.Scanner;
public class solution {
public static String getSmallestAndLargest(String s, int k) {


        String smallest = "";
       
        String largest = "";

        smallest = s.substring(0,k);
        largest = s.substring(0,k);

//         "Compare to" method doesn't turn just the equel case it also turns a value.
        for(int i=0; i<=s.length()-k; i++ ){

            String str = s.substring(i,k+i);
            int sc = smallest.compareTo(str);
            int lc = largest.compareTo(str);
            if (sc > 0){
                
                smallest = str;
            }
            if(lc < 0){
                
                largest=str;

            }
        }  

        return smallest + "\n" + largest;
    }
    public static void main(String[] args) {
        //Scanner scan = new Scanner(System.in);
        String s = "welcometojava";
        int k = 3;
        //scan.close();
        System.out.println("Genevieve Xalxo");
        System.out.println("Genevieve Xalxo");
      
        System.out.println(getSmallestAndLargest(s, k));
    }
}