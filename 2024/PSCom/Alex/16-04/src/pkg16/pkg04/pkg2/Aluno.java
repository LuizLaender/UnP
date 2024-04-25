
package pkg16.pkg04.pkg2;

public class Aluno extends Pessoa{
    private String Matricula;
    private Double Nota;

    public Aluno(String Matricula, String Nome, String CPF) {
        super(Nome, CPF);
        this.Matricula = Matricula;
    }

    public String getMatricula() {
        return Matricula;
    }

    public void setMatricula(String Matricula) {
        this.Matricula = Matricula;
    }

    public Double getNota() {
        return Nota;
    }

    public void setNota(Double Nota) {
        this.Nota = Nota;
    }
    
    @Override
    public void Falar(){
        System.out.println("ME DA PONTO!");
    }
}
