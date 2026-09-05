object tito {
  var bebidaActual = whisky
  var cantidadBebida = 0
  var peso = 70
  method peso() = peso
  method velocidad() = bebidaActual.rendimiento(cantidadBebida, self) * (490/peso)
  method consumir(cantidad, bebida) {
    bebidaActual = bebida
    cantidadBebida = cantidad
  }
  method cambiarPeso(nuevoPeso) {
    peso = nuevoPeso
  }
}
object pepe {
  var peso = 80
  var bebidaActual = whisky
  var cantidadBebida = 0
  var edad = 30
  method peso() = peso
  method cumpliAnios() {
    edad += 1
  }
  method velocidad() = if(edad<30) 
    bebidaActual.rendimiento(cantidadBebida, self) * (490/(peso - if(edad>30) 10 else 0))
  method consumir(cantidad, bebida) {
    bebidaActual = bebida
    cantidadBebida = cantidad
  }
  method cambiarPeso(nuevoPeso) {
    peso = nuevoPeso
  }
}
object whisky {
  method rendimiento(cantidad, atleta) = (0.9**cantidad)
}
object terere {
  method rendimiento(cantidad, atleta) = (0.1*(cantidad*3)).max(1)
}
object cianuro {
  method rendimiento(cantidad, atleta) = 
    if(atleta.peso() > 70) (atleta.peso()*0.01) + cantidad else 0
}