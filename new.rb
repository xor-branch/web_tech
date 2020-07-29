require 'webrick'
server = WEBrick::HTTPServer.new({
  :DocumentRoot => '.',
  :CGIInterpreter => WEBrick::HTTPServlet::CGIHandler::Ruby,
  :Port => '3000',
})
['INT', 'TERM'].each {|signal|
  Signal.trap(signal){ server.shutdown }
}
server.mount('/new', WEBrick::HTTPServlet::ERBHandler, 'new.html.erb')
server.mount('/indicate.cgi', WEBrick::HTTPServlet::CGIHandler, 'indicate.rb')
server.mount('/goya.cgi', WEBrick::HTTPServlet::CGIHandler, 'goya.rb')
server.start

#WEBrick :: HTTPServer.new Créez une instance de Webrick avec serveur Mettez-le dans une variable locale nommée.
#Comme valeur initiale à ce moment-là,
#DocumentRoot : Définition du domaine de cette application Web (la description écrite ici devient le domaine de l'application Web à créer)
#Interprète CGI : Une description qui spécifie l'emplacement du corps principal d'un programme (Ruby) qui peut exécuter (traduire) ce programme.
#Port : Paramètres qui représentent la passerelle d'informations pour cette application Web.
　
