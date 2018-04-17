
eigener_ordner = File.dirname(__FILE__)

# DRY
# don't repeat yourself!

design_ordner = File.expand_path("../design/", eigener_ordner)
inhalt_ordner = File.expand_path("../inhalt/", eigener_ordner)
ausgabe_ordner = File.expand_path("../ausgabe/", eigener_ordner)

seiten_template = File.read(File.expand_path("seiten_template.html", design_ordner))
frame_template = File.read(File.expand_path("frame_template.html", design_ordner))

#neuer_inhalt = frame_template * 10
neuer_inhalt = Dir[inhalt_ordner + "/fi-*"].map do |pfad_zum_frame_ordner|
  bild_pfad = Dir[pfad_zum_frame_ordner + "/*.jpg"].first     # erstes Bild aus dem Ordner
  belegter_frame = frame_template.sub('platzhalter.gif', bild_pfad)

  datensatz_pfad = Dir[pfad_zum_frame_ordner + "/*.dat"].first
  if datensatz_pfad
    datensatz_text = File.read(datensatz_pfad)

    datensatz_text.each_line do |zeile|

      next if zeile.strip.empty?

      bezeichnung, inhalt = zeile.split("=")
      bezeichnung.strip! ; inhalt.strip!

      puts "#{bezeichnung} = #{inhalt}"
      #puts "#{bezeichnung}-Platzhalter".inspect
      belegter_frame.sub!("#{bezeichnung}-Platzhalter", inhalt)
    end
  end
  belegter_frame
end.join("\n")

ziel_dateiname = File.expand_path("gallery.html", ausgabe_ordner)

ziel_inhalt = seiten_template.sub( '<p class="platzhalter">frame_template.html</p>', neuer_inhalt)


File.open(ziel_dateiname, "w") do |file|
  file.puts ziel_inhalt
end
