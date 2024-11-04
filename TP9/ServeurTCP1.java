import java.io.*;
import java.net.*;

public class ServeurTCP1 
{
    public static void main(String[] args) 
	{
        try (ServerSocket serverSocket = new ServerSocket(2016)) 
		{ // Port 2016 pour la connexion
            System.out.println("Serveur TCP en attente de connexion...");

            // Attente de la connexion d'un client
            Socket socket = serverSocket.accept();
            System.out.println("Connexion d'un client");

            // Lecture du message envoyé par le client
            DataInputStream dIn = new DataInputStream(socket.getInputStream());
            System.out.println("Message: " + dIn.readUTF());

            // Fermeture des connexions
            socket.close();
            serverSocket.close();
        } catch (IOException e) 
	{
            e.printStackTrace();
        }
    }
}

