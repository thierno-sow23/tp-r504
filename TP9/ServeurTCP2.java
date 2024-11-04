//Dans ce programme, le serveur attend des connexions et affiche les messages reçus. Il reste actif grâce à une boucle infinie while(true)
import java.io.*;
import java.net.*;

public class ServeurTCP2 {
    public static void main(String[] args) {
        try (ServerSocket serverSocket = new ServerSocket(2016)) { // Port 2016 pour la connexion
            System.out.println("Serveur TCP en attente de connexions...");

            while (true) { // Boucle infinie pour garder le serveur actif
                // Accepter une connexion client
                Socket socket = serverSocket.accept();
                System.out.println("Connexion d'un client");

                // Lire le message du client
                DataInputStream dIn = new DataInputStream(socket.getInputStream());
                System.out.println("Message reçu : " + dIn.readUTF());

                // Fermer la connexion avec le client (pas le serveur)
                socket.close();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}

