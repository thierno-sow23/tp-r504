import java.io.*;
import java.net.*;

public class ClientUDP
{
    public static void main(String[] args) throws IOException
	{
        // Récupérer l'adresse IP locale
        InetAddress addr = InetAddress.getLocalHost();
        System.out.println("Adresse = " + addr.getHostName());

        // Chaîne de caractères à envoyer
        String s = "Hello World!";
        byte[] data = s.getBytes();

        // Création du paquet UDP avec les données, l'adresse et le port
        DatagramPacket packet = new DatagramPacket(data, data.length, addr, 1234);

        // Création du socket pour envoyer le paquet
        DatagramSocket sock = new DatagramSocket();
        sock.send(packet);

        // Fermeture du socket après envoi
        sock.close();
    }
}

