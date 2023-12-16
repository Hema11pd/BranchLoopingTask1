package GuviTask1;

import java.util.Scanner;

public class Purchase {
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        int a = sc.nextInt();
        int finalAmount =0;
        if(a<500)
        {
           finalAmount = a;
            System.out.println("FinalAmount: "+finalAmount);
        }
        else if(a>=500 && a<=1000)
        {
            finalAmount = a-(a*10/100);
            System.out.println("FinalAmount: "+finalAmount);
        }
        else
        {
            finalAmount = a-(a*20/100);
            System.out.println("FinalAmount: "+finalAmount);

        }
    }




}
