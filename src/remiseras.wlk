//Clientes

object ludmila {
	method viajeACobrar(km) {
		return 18 * km
	}
}

object anaMaria {
	var estable = true
	var noEstable = false
	var property estaEstable
	method viajeACobrar(km) {
		if (estaEstable == noEstable) {
		   	estaEstable = noEstable
		   	return 25 * km
		}
		else  estaEstable = estable
		return 30 * km
	}
}

object teresa {
	method viajeACobrar(km) {
		return 22 * km
	}
}

//Remiseras
object roxana {
	method cobrar(cliente, km) {
		return cliente.viajeACobrar(km)
	}
}

object gabriela {
	method cobrar(cliente, km) {
		return cliente.viajeACobrar(km) * 1.20
	}
}

object mariela {
	method cobrar(cliente, km) {
		//return 50.max(cliente.viajeACobrar(km))
		if (cliente.viajeACobrar(km) < 50) {
			return 50
		} 
		else { 
			return cliente.viajeACobrar(km) 
			} 
	}
}

object juana {
	method cobrar(cliente, km) {
		if (km > 8) {
			return 200
		}
		else { return 100}
	}
}