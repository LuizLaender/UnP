package pkg02.pkg04.vetores;
import java.util.Scanner;

public class Vetores {
    public static void main(String[] args) {
        
        Scanner Ler = new Scanner(System.in);

        int Vetor[] = new int [4];
                
        final int TAM = 4;
        
        for(int i = 0; i < TAM; i++){
            System.out.println("Digite elemento da "+(i+1)+" posição");
            Vetor[i] = Ler.nextInt();
        }        
        for(int i = 0; i < TAM; i++ ){
            System.out.print(Vetor[i]);
            
        int Maior = Vetor[0];
        int Menor = Vetor[0];
        int P_Maior;
        int P_Menor;
        }
    }
}
