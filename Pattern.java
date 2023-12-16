package GuviTask1;

public class Pattern {
    public static void main(String[] args) {

        int n = 5;


        for (int i = n; i >= 1; i--) {

            for (int j = n; j >= i; j--) {

                   System.out.print(j+" ");

            }

            for (int k = 1; k <= i - 1; k++) {
                System.out.print(i+" ");
            }

            System.out.println();
        }
    }
}
