import java.io.*;
import java.util.regex.*;

public class Solution {
    public static void main(String[] args) throws IOException{
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        Matcher matcher = Pattern.compile("^hi\\s[^d]", Pattern.CASE_INSENSITIVE).matcher("");
        for(int i = Integer.parseInt(reader.readLine()); i > 0; --i) {
            String line = reader.readLine();
            if(matcher.reset(line).find()) {
                System.out.println(line);
            }
        }
    }
}