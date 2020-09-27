<%-- 
    Document   : index
    Created on : 25/09/2020, 18:49:16
    Author     : oscar19
--%>

<%@page import="funciones.Calculadora"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">                
        <title>Tarea JSP</title>
    </head>
    <body>
        <div class = "container mt-4 col-lg-8">
            <h3>Calculadora</h3>
            <form action ="index.jsp" method = "POST" class="form-group">
                <div class="form-group">
                    <label>Numero 1</label>
                    <input type = "text" name = "num1" class="form-control">
                </div>
                <div class="form-group">
                    <label>Numero 2</label>
                    <input type = "text" name = "num2" class="form-control">
                </div>                
                <div class="form-group">
                    <input type="submit" name ="accion" value="Sumar" class="btn btn-primary">
                    <input type="submit" name ="accion" value="Multiplicar" class="btn btn-primary">
                    <input type="submit" name ="accion" value="Calcular Numero Mayor" class="btn btn-primary">
                    <input type="submit" name ="accion" value="Potencia" class="btn btn-primary">
                    <input type="submit" name ="accion" value="Calcular Binarios" class="btn btn-primary">
                </div>
            </form>
        </div>
        <%
            Calculadora calculadora = new Calculadora();
            String accion = request.getParameter("accion");
            if (accion != null) {
                try {
                    int numero1 = Integer.parseInt(request.getParameter("num1"));
                    int numero2 = Integer.parseInt(request.getParameter("num2"));
                    if (accion.equalsIgnoreCase("Sumar")) {
                        int resultado = calculadora.Sumar(numero1, numero2);
        %>
        <div class="alert alert-primary">
            La suma es de: <%= resultado%>
        </div>
        <%
        } else if (accion.equalsIgnoreCase("Multiplicar")) {
            int resultado = calculadora.Multiplicar(numero1, numero2);
        %>
        <div class="alert alert-primary">
            La multiplicacion es de: <%= resultado%>
        </div>
        <%
        } else if (accion.equalsIgnoreCase("Calcular Numero Mayor")) {
            int resultado = calculadora.NumeroMayor(numero1, numero2);
        %>
        <div class="alert alert-primary">
            El numero mayor es: <%= resultado%>
        </div>
        <%
        } else if (accion.equalsIgnoreCase("Potencia")) {
            double resultado = calculadora.Potencia(numero1, numero2);
        %>
        <div class="alert alert-primary">
            El potencia es de: <%= resultado%>
        </div>
        <%
        } else if (accion.equalsIgnoreCase("Calcular Binarios")) {
            double[] binarios = calculadora.ConvertirBinario(numero1, numero2);
        %>
        <div class="alert alert-primary">
            Numero 1: <%= binarios[0]%><br>
            Numero 2: <%= binarios[1]%>
        </div>
        <%
            }

        } catch (Exception e) {
            String error = e.toString();
        %>
        <div class="alert alert-danger">
            Error: <%= error%>
        </div>
        <%
                }
            }
        %>
    </body>
</html>
