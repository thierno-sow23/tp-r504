//Le client envoie un message au serveur, spécifié comme argument de la ligne de commande (args[0]).
import java.io.*;
import java.net.*;

public class ClientTCP2 {
    public static void main(String[] args) {
        if (args.length < 1) {
            System.out.println("Usage : java ClientTCP2 <message>");
            return;
        }

        try {
            // Connexion au serveur sur le port 2016
            Socket socket = new Socket("localhost", 2016);

            // Envoi du message spécifié dans args[0]
            DataOutputStream dOut = new DataOutputStream(socket.getOutputStream());
            dOut.writeUTF(args[0]);

            // Fermeture de la connexion avec le serveur
            socket.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}

