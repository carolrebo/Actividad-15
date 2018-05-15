puts "Ingrese texto 1"
texto1= gets.chomp

puts "Ingrese texto 2"
texto2= gets.chomp

def parrafos(texto1,texto2)
	file = File.open('index.html', 'w')
	file. puts "<p> #{texto1} </p>"
	file. puts "<p> #{texto2} </p>"
	file.close
end

parrafos(texto1,texto2)