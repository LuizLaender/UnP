package pkg16.pkg04.pkg2;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner Ler = new Scanner(System.in);

        Pessoa P1 = new Pessoa("Maia", "080");
        System.out.println("Nome e cpf: " + P1.getNome()+ " - " + P1.getCPF());
        
        P1.setIdade(29);
        P1.setEmail("qwe@rty.com");

        System.out.println("Idade e email: " + P1.getIdade() + " - " + P1.getEmail());

        String Nome, CPF, Matricula;
        
        System.out.println("Nome aluno: ");
        Nome = Ler.nextLine();
        
        System.out.println("cpf aluno: ");
        CPF = Ler.nextLine();
        
        System.out.println("matricula: ");
        Matricula = Ler.nextLine();
        
        Aluno A1 = new Aluno(Matricula, Nome, CPF);
        
        System.out.println("nome "+Nome);
        System.out.println("matricula "+Matricula);
        
        A1.setNota(8.9);
        
        System.out.println("nota "+A1.getNota());
        
    }
    
}
