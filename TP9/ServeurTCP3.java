import java.io.*;
import java.net.*;

public class ServeurTCP3 {
    public static void main(String[] args) {
        try (ServerSocket serverSocket = new ServerSocket(1234)) {
            System.out.println("Serveur en attente de connexion...");
            while (true) {
                Socket socket = serverSocket.accept();
                System.out.println("Client connecté: " + socket.getInetAddress());

                // Créer des flux d'entrée et de sortie
                BufferedReader in = new BufferedReader(new InputStreamReader(socket.getInputStream()));
                PrintWriter out = new PrintWriter(socket.getOutputStream(), true);

                // Lire le message du client
                String msg = in.readLine();
                System.out.println("Reçu du client: " + msg);

                // Inverser le message
                String rev = new StringBuilder(msg).reverse().toString();

                // Envoyer le message inversé au client
                out.println(rev);
                System.out.println("Envoyé au client: " + rev);

                // Fermer la connexion
                socket.close();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}

