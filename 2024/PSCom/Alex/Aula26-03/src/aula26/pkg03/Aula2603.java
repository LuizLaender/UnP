package aula26.pkg03;

import java.util.Scanner;

public class Aula2603 {
    
    public static void main(String[] args) {
        
        Scanner Ler = new Scanner(System.in);
        
        float numero;
        float Maior = Integer.MIN_VALUE;
        float Menor = Integer.MAX_VALUE;
        
        for(int i = 1; i < 6; i++ ){
            do{
                System.out.print("Digite um numero positivo ("+i+" elemento) ");
                numero = Ler.nextFloat();
            }while (numero<0);
            if(numero > Maior){
                Maior = numero;
            }
            if (numero < Menor){
                Menor = numero;
            }
        }
        System.out.println("Maior: " + Maior);
        System.out.println("Menor: " + Menor);
    }
    
}
