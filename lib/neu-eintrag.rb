#!/urs-bin/env ruby

require 'fileutils'

#puts ARGV
eigener_ordner = File.dirname(__FILE__)
$inhalt_ordner = File.expand_path("../inhalt/", eigener_ordner)

params = ARGV.first.split("*")

=begin Das ist eine ausführliche Variante:
def finde_next_ordner()
  alle_fi_ordner = Dir[$inhalt_ordner + "/fi-*"]
  neuester_fi_ordner = alle_fi_ordner.max
  next_fi_ordner = neuester_fi_ordner.succ
end
=end

def finde_next_ordner
  Dir[$inhalt_ordner + "/fi-*"].max.succ
end

def next_ordner_vorbereiten
  next_ordner = finde_next_ordner
  return if next_ordner.nil?
  Dir.mkdir next_ordner
  next_ordner
end

next_ordner = next_ordner_vorbereiten
File.open(next_ordner + "/info.dat", "w") do |datei|
  datei.puts puts "
Titel = #{params[0]} \n
Datum = #{params[1]} \n
Material = #{params[2]}
Dimensionen = #{params[3]}
Kommentar = #{params[4]}
"
end

puts next_ordner
