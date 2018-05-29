# 1-crear metodo reciba,abra archivo y contabilice total de palabras e imprimir valor
# 2- metodo que reciva un string de argumento, contabilizar veces que aparece en el archivo

def cantidad_frase(a)
	data = File.open(a, "r") { |archivo| archivo.read }
	data.split(' ').length
end

def reiteracion_frase(a, b)
	suma = 0
	data = File.open(a, "r") { |archivo| archivo.read }
	data.split(' ').each { |x| suma+=1 if x == b}
	suma
end

puts cantidad_frase("peliculas.txt")#65
puts reiteracion_frase("peliculas.txt", "La")#8 veces repetida