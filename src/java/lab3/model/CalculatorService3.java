/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lab3.model;

import java.text.DecimalFormat;

/**
 *
 * @author eennis
 */
public class CalculatorService3 {
    
    private DecimalFormat df;
    
    public CalculatorService3(){
        df = new DecimalFormat("#.##");
    }
    
    public double calcAreaRectangle(double l, double w){
        return Double.parseDouble(df.format(l * w));
    }
    
    public double calcAreaCircle(double r){
        return Double.parseDouble(df.format((r * r) * Math.PI));
    }
    
    public double calcAreaTriangle(double b, double h){
        return Double.parseDouble(df.format((b * h) / 2));
    }
    
}
