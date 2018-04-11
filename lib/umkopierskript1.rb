
require 'fileutils'


quell_pfad = "/dat/aaa/111/Do/WEis/Projektarbeiten/Yuri/Johann Bärenklau/assets/img/content/kunst/"
ziel_pfad = "/dat/aaa/111/Do/WEis/Projektarbeiten/Yuri/scripte/gallerie-johann/inhalt/"

Dir[quell_pfad + "/??.jpg"].each do |pfad_zum_bild|
  bild_nummer = File.basename(pfad_zum_bild, ".jpg")
  neuer_ordner_name = "fi-00" + bild_nummer
  neuer_pfad = File.join(ziel_pfad, neuer_ordner_name)
  Dir.mkdir neuer_pfad unless File.exist? neuer_pfad
  FileUtils.copy pfad_zum_bild, neuer_pfad
end
