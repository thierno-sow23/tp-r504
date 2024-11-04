import java.io.*;
import java.net.*;

public class ClientTCP1 {
    public static void main(String[] args) {
        try {
            // Connexion au serveur sur le port 2016
            Socket socket = new Socket("localhost", 2016);

            // Création du flux de sortie pour envoyer des données
            DataOutputStream dOut = new DataOutputStream(socket.getOutputStream());
            dOut.writeUTF("message test"); // Envoi du message

            // Fermeture du socket
            socket.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}

