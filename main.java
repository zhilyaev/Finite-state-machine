import java.util.Scanner;

public class Main {

    private static int dec(char a){
        return (int)a-48;
    }

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        String str = in.nextLine();
        char[] chars= str.toCharArray();

        int i,state=0;

        /* ТАБЛИЦА СОСТОЯНИЙ */
        int table[][] = {{1,2},{1,3},{4,2},{5,2},{1,6},{1,6},{5,2}};

        for (i=0; i<str.length(); i++)
        {
            state=table[state][dec(chars[i])];
            if (state<0) break;
        }
        if (state>4) System.out.println(true);
        else System.out.println(false);

    }
}
