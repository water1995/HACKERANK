/*
Given a string, , matching the regular expression [A-Za-z !,?._'@]+, split the string into tokens. We define a token to be one or more consecutive English alphabetic letters. Then, print the number of tokens, followed by each token on a new line.

Note: You may find the String.split method helpful in completing this challenge.

Output Format

On the first line, print an integer, , denoting the number of tokens in string  (they do not need to be unique). Next, print each of the  tokens on a new line in the same order as they appear in input string .

Sample Input

He is a very very good boy, isn't he?
Sample Output

10
He
is
a
very
very
good
boy
isn
t
he*/
import java.io.*;
import java.util.*;
import java.util.regex.Pattern;
import java.util.regex.Matcher;

public class stringtoken{
	
	public static void main(String[] args){
	
	System.out.println("Enter a string");
	Scanner sc = new Scanner(System.in);
	String input = sc.nextLine();
	input = input.trim();
	
	if(input.length() == 0){
		System.out.println(0);
		return;
	}
	
	String[] words = input.split("[^a-zA-Z]+");
	System.out.println(words.length);
	for(String word : words){
		System.out.println(word);
	}
	}
}
	
		
		
		
	