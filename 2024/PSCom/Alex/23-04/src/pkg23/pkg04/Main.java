package pkg23.pkg04;

public class Main {
    public static void main(String[] args) {
        int x = 72;
        String Num = ""+x;
        int Num1 = Num.charAt(0)-48;
        int Num2 = Num.charAt(1)-48;
        System.out.println(Num1+Num2);
        
        Num1 = Integer.parseInt(""+Num.charAt(0));
        Num2 = Integer.parseInt(""+Num.charAt(1));
        
        System.out.println(Num1+Num2);
    }
    
}
