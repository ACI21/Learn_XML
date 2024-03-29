import javax.xml.transform.*;
import javax.xml.transform.stream.*;

public class Ejercicio2 {
    public static void main(String[] args) {
        try {
            // Cargar el XML de entrada y el archivo XSLT
            Source xmlSource = new StreamSource("./Tarea 5/artistas.xml");
            Source xsltSource = new StreamSource("./Tarea 5/Ejercicio2.xslt");

            // Preparar el resultado
            TransformerFactory factory = TransformerFactory.newInstance();
            Transformer transformer = factory.newTransformer(xsltSource);

            // Aplicar la transformación y escribir la salida en un archivo o imprimir en la consola
            transformer.transform(xmlSource, new StreamResult("./Tarea 5/Ejercicio2.html"));
            System.out.println("Transformación completada. La salida se encuentra en 'Ejercicio2.html'.");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
