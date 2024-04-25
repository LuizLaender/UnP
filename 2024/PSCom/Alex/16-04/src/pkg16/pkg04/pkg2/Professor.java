
package pkg16.pkg04.pkg2;

public class Professor extends Tecnico{
    private String Disciplina;

    public Professor(String Disciplina, String Nome, String CPF) {
        super(Nome, CPF);
        this.Disciplina = Disciplina;
    }

    public String getDisciplina() {
        return Disciplina;
    }

    public void setDisciplina(String Disciplina) {
        this.Disciplina = Disciplina;
    }
    
    @Override
    public void Falar(){
        System.out.println("Eu sou um PROFESSOR!");
    }
    
    @Override
    public void CalcSalario(double HoraAula, int Horas){
        this.Salario = HoraAula*Horas*4.5;
    }
    
}
