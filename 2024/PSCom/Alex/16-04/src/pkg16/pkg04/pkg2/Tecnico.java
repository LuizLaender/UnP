
package pkg16.pkg04.pkg2;

public class Tecnico extends Pessoa{
    protected double Salario;

    public Tecnico(String Nome, String CPF) {
        super(Nome, CPF);
    }

    public double getSalario() {
        return Salario;
    }

    public void setSalario(double Salario) {
        this.Salario = Salario;
    }
    
    @Override
    public void Falar(){
        System.out.println("SOU UM TECNICO");
    }
    
    public void CalcSalario(double HoraAula, int Horas){
        this.Salario = HoraAula*Horas*4;
    }
}
