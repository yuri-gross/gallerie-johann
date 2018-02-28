
eigener_ordner = File.dirname(__FILE__)

template = File.read(File.expand_path("../daten/container_templ.html", eigener_ordner))


puts template