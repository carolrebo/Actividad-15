puts "Ingrese texto 1"
texto1= gets.chomp.to_s

puts "Ingrese texto 2"
texto2= gets.chomp.to_s

def met2(texto1,texto2,arr,color)
	file = File.open('index1-3.html', 'w')
	file.puts "<ol>"
	file.puts "<li>#{texto1} </li>"
	file.puts "<li>#{texto2} </li>"
	arr.each do |x|
		file.puts "<li>#{x} </li>"
	end
	file.puts "<ol>"
	file.puts "<p style= background-color:#{color}>Lorem ipsum...</p>"
	file.close
	return = nil
end

color = 'red'
arr = ['carol','818181','blabla','jajaja']
met2(texto1,texto2,arr,color)