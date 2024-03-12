package pscom_1103_02;

import java.util.Scanner;

public class PSCom_1103_02 {


    public static void main(String[] args) {
        Scanner Read = new Scanner(System.in);
        float X1, X2, Y1, Y2, Temp, D;
        
        System.out.println("Digite o valor de X1: ");
        X1 = Read.nextFloat();
        
        System.out.println("Digite o valor de X2: ");
        X2 = Read.nextFloat();
        
        System.out.println("Digite o valor de Y1: ");
        Y1 = Read.nextFloat();
        
        System.out.println("Digite o valor de Y2: ");
        Y2 = Read.nextFloat();
        
        Temp = (float)Math.pow((X2-X1), 2)+(float)Math.pow((Y2-Y1), 2);
        
        D = (float)Math.sqrt(Temp);
        
        System.out.println("valor total:"+ D);
    }
    
}
