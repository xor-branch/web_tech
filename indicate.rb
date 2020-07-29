# Lancer un programme CGI pour recevoir et renvoyer des données
require 'cgi'
cgi = CGI.new
# Après avoir reçu les données, renvoyez la réponse au format HTML.
cgi.out("type" => "text/html", "charset" => "UTF-8") {
  ## Extraire les données reçues cgi [input] et les affecter à une variable locale
  # Extraction d'informations à partir d'une "entrée" de référence
  get = cgi['input']
   # Renvoyer la réponse en HTML
  "<html>
    <body>
      <p>La chaîne reçue est la suivante</p>
      <p>le mot est :#{get}</p>
    </body>
  </html>"
}
