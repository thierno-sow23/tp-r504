import java.io.*;
import java.net.*;

public class ServeurUDP {
    public static void main(String[] args) throws IOException 
	{
        // Création d'un socket pour écouter sur le port 1234
        DatagramSocket sock = new DatagramSocket(1234);

        // Buffer pour recevoir les données
        byte[] buffer = new byte[1024];

        System.out.println("Serveur en attente de messages...");

        // Boucle infinie pour traiter les paquets entrants
        while (true)
		{
             // Création d'un paquet pour recevoir les données
           DatagramPacket packet = new DatagramPacket(buffer, buffer.length);
             System.out.println("- Attente de données");

            // Réception du paquet
          sock.receive(packet);

           // Conversion des données reçues en chaîne de caractères
            String str = new String(packet.getData(), 0, packet.getLength());
            System.out.println("Message reçu : " + str);
        }
    }
}

