import java.util.*;

public class FindHackerrank {

    public static void main(String[] args) {
        Scanner stdin = new Scanner(System.in);
        int tests = Integer.parseInt(stdin.nextLine());
        for(int i = 0; i < tests; i++) {
            String line = stdin.nextLine();
            int out = -1;
            if(line.matches("^hackerrank$") || line.matches("^hackerrank.*hackerrank$"))
                out = 0;
            else if(line.matches("^hackerrank.*"))
                out = 1;
            else if(line.matches(".*hackerrank$"))
                out = 2;
            
            System.out.println(out);
        }
        stdin.close();
    }
}