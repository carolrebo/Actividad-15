file = File.open('peliculas.txt','r')
lines = files.readlines
file.close

lines.each do |x|
	data = x.split(' ').map($:chomp)
	data.length 
	# lineas.inject(0) do |total,x|
	# total + x.split(" ").length
end

# palabras = a.inject(0) { |sum,x| sum + x}