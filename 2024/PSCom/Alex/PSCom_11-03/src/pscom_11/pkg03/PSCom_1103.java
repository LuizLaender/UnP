package pscom_11.pkg03;

import java.util.Scanner;

public class PSCom_1103 {

    public static void main(String[] args) {
        Scanner Read = new Scanner(System.in);
        int A, B, C;
        
        System.out.println("Digite o valor de A: ");
        A = Read.nextInt();
        while (A < 0) {
            System.out.println("Error: Algum dos numeros nao e positivo, tente novamente: ");
            A = Read.nextInt();
        }
        
        System.out.println("Digite o valor de B: ");
        B = Read.nextInt();
        while (B < 0) {
            System.out.println("Error: Algum dos numeros nao e positivo, tente novamente: ");
            B = Read.nextInt();
        }
        
        System.out.println("Digite o valor de C: ");
        C = Read.nextInt();
        while (C < 0) {
            System.out.println("Error: Algum dos numeros nao e positivo, tente novamente: ");
            C = Read.nextInt();
        }
        
        int R = (int)Math.pow((A+B), 2);
        int S = (int)Math.pow((B+C), 2);
        int D = (R + S)/2;
        
        System.out.println("O valor da expressao e: "+D);
    }
    
}
