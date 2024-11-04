import java.io.*;
import java.net.*;

public class ClientTCP3 {
    public static void main(String[] args) {
        try (Socket socket = new Socket("localhost", 1234)) {
            // Créer des flux d'entrée et de sortie
            PrintWriter out = new PrintWriter(socket.getOutputStream(), true);
            BufferedReader in = new BufferedReader(new InputStreamReader(socket.getInputStream()));

            // Message à envoyer au serveur
            String msg = "Bonjour, serveur!";
            System.out.println("Envoyé au serveur: " + msg);
            out.println(msg);

            // Lire la réponse du serveur
            String response = in.readLine();
            System.out.println("Reçu du serveur: " + response);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}

