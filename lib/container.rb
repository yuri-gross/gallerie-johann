
eigener_ordner = File.dirname(__FILE__)

# DRY
# don't repeat yourself!

daten_ordner = File.expand_path("../daten/", eigener_ordner)

seiten_template = File.read(File.expand_path("seiten_template.html", daten_ordner))
frame_template = File.read(File.expand_path("frame_template.html", daten_ordner))

neuer_inhalt = frame_template * 10
ziel_dateiname = File.expand_path("gallery.html", daten_ordner)

ziel_inhalt = seiten_template.sub( '<p class="platzhalter">frame_template.html</p>', neuer_inhalt)


File.open(ziel_dateiname, "w") do |file|
  file.puts ziel_inhalt
end
