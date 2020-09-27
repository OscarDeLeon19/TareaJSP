package funciones;

public class Calculadora {

    public Calculadora() {
    }

    public int Sumar(int num1, int num2) {
        int resultado = num1 + num2;
        return resultado;
    }

    public int Multiplicar(int num1, int num2) {
        int resultado = num1 * num2;
        return resultado;
    }

    public int NumeroMayor(int num1, int num2) {
        int resultado = num1;
        if (num2 > resultado) {
            resultado = num2;
        }
        return resultado;
    }

    public double Potencia(int num1, int num2) {
        int base = num1;
        int exponente = num2;
        double resultado = (int) Math.pow(base, exponente);
        return resultado;
    }
    
    public double[] ConvertirBinario(int num1, int num2){
        int numero1 = num1;
        int exponente1 = 0;
        int digito1;
        double numero_binario1 = 0;

        int numero2 = num2;
        int exponente2 = 0;
        int digito2;
        double numero_binario2 = 0;
        
        while(numero1!=0){
                digito1 = numero1 % 2;           
                numero_binario1 = numero_binario1 + digito1 * Math.pow(10, exponente1);                                                   
                exponente1++;
                numero1 = numero1/2;
        }
        
        while(numero2!=0){
                digito2 = numero2 % 2;           
                numero_binario2 = numero_binario2 + digito2 * Math.pow(10, exponente2);                                                   
                exponente2++;
                numero2 = numero2/2;
        }
        double[] binarios = new double[2];
        binarios[0] = numero_binario1;
        binarios[1] = numero_binario2;
        
//        System.out.printf("Binario: %.0f %n", numero_binario1);
        return binarios;
        
    }  
}
