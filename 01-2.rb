puts "Ingrese texto 1"
texto1= gets.chomp.to_s

puts "Ingrese texto 2"
texto2= gets.chomp.to_s

def met2(texto1,texto2,arr)
	file = File.open('index1-2.html', 'w')
	file.puts "<ol>"
	file.puts "<li>#{texto1} </li>"
	file.puts "<li>#{texto2} </li>"
	arr.each do |x|
		file.puts "<li>#{x} </li>"
	end
	file.puts "<ol>"
	file.close
end

arr = ['carol','818181','blabla','jajaja']
met2(texto1,texto2,arr)