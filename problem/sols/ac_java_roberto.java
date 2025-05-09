import java.io.*;
import java.util.*;

public class Main {
	public static void main(String[] args) throws IOException {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		String line = reader.readLine();

		String[] parts = line.split(" ");
		int a = Integer.parseInt(parts[0]);
		int b = Integer.parseInt(parts[1]);

		System.out.println(a + b);
	}
}
