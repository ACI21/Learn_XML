<html>
  <head>
    <title>Artistas vivos</title>
  </head>
  <body>
    <h1>Artistas Vivos:</h1>
    <ul>
      { for $artista in doc("artistas.xml")/artistas/artista where
      $artista/ocupacion = "pintura" return
      <artista>
        <nombre>{$artista/nombre/text()}</nombre>
        <apellido>{$artista/apellido/text()}</apellido> </artista>
      }
    </ul>
  </body>
</html>
