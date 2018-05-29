productos = {
			"Producto1" => {tienda1: 10, tienda2: 15, tienda3: 21},
			"Producto2" => {tienda1: 20, tienda2: 0, tienda3: 3},
			"Producto3" => {tienda1: 4, tienda2: 8, tienda3: 0},
			"Producto8" => {tienda1: 1, tienda2: 2, tienda3: 'NR'},
			"Producto12" => {tienda1: 'NR', tienda2: 2, tienda3: 'NR'}
			}

opcion = 0
while opcion !=6
		puts
		puts "Menu: Ingrese su opcion"
		puts " 1- Mostrar Existencia" 
		puts " 2- Consultar stock de producto" 
		puts " 3- Mostrar productos con cantidad no registrada" 
		puts " 4- Mostrar productos con una cantidad inferior a la requerida" 
		puts " 5- Agregar nuevo producto" 
		puts " 6- salir" 
		puts "-----"
		puts "Ingrese el Nº de su opcion"

		opcion = gets.chomp.to_i

		case opcion
			when 1
				puts "A)Existencia Total de productos" 
				productos.each{ |k,v| 
				suma = 0
				v.values.each { |x| suma = suma + x if x != 'NR'}
				puts "Existen #{suma} de #{k}"
				}
				puts "------------------------"
				puts "B) Reporte de existencia por tienda"
				tienda1 = 0
			  	tienda2 = 0
			  	tienda3 = 0
			  	productos.each{ |k,v|
			  		v.each{ |k,v|

			  			if k == :tienda1 && v != 'NR'
			  			tienda1 = tienda1 + v
			  			end

			  			if k == :tienda2 && v != 'NR'
			  			tienda2 = tienda2 + v
			  			end

			  			if k == :tienda3 && v != 'NR'
			  			tienda3 = tienda3 + v
			  			end
			  		}
			  	 }
			  	    puts "Tienda 1: #{tienda1} productos"
			  		puts "Tienda 2: #{tienda2} productos"
			  		puts "Tienda 3: #{tienda3} productos"


			  	puts "C) Reporte Total Tiendas"
			  	total = 0
			  	productos.each{ |k,v|
			  		v.each{ |k,v|
			  		   total = total + v if v != 'NR'
			  		}
			  	 }
			  	 puts "Total tiendas: #{total} productos"
			when 2
				puts "Ingrese producto a consultar"
				buscar = gets.chomp
					if productos.keys.include?(buscar)
					total_prod = 0
					productos[buscar].values.each{ |x| total_prod = total_prod + x}
					end
				    puts "Existen #{total_prod} #{buscar} en tiendas"	
			when 3
				puts "Producto NO registrados"
				productos.each{ |nombre,datos|
			  	datos.each{ |tienda,cant| puts "El #{nombre} no tiene registro en: #{tienda}" if cant == 'NR'}
			  	}
			
			when 4
				puts "Ingrese cantidad de minima obligatoria de un producto"
				data = gets.chomp.to_i
				productos.each{ |nombre,datos|
			  		datos.each{ |tienda,cant| puts "#{nombre} tiene #{cant} productos en: #{tienda}" if cant < data}
			  	 }

			when 5
				puts "Nombre de nuevo producto"
				n1 = gets.chomp.to_s
				puts "Stock en tienda 1"
				n2 = gets.chomp.to_i
				puts "Stock en tienda 2"
				n3 = gets.chomp.to_i
				puts "Stock en tienda 3"
				n4 = gets.chomp.to_i
				print productos.store(n1,{tienda1: n2, tienda2: n3, tienda3: n4})
				print productos
			when 6
				# salir
			else
				puts "Opcion invalida"
			end
end