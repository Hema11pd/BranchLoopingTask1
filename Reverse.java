package GuviTask1;

public class Reverse {
    public static void main(String[] args)
    {
    int Input = 876;
    int reversed=0;
    while(Input>0)
    {
        int temp = Input%10;
        reversed = reversed*10 + temp;
        Input = Input/10;

    }
        System.out.println(reversed);


    }
}
