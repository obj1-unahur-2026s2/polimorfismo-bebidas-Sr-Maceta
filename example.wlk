object tito {
  var bebidaActual = whisky
  var cantidadBebida = 0
  method peso() = 70
  method velocidad() = bebidaActual.rendimiento(cantidadBebida) * (490/(self.peso()))
  method consumir(cantidad, bebida) {
    bebidaActual = bebida
    cantidadBebida = cantidad
  }
}
object whisky {
  method rendimiento(cantidad) = (0.9**cantidad)
}
object terere {
  method rendimiento(cantidad) = (0.1*(cantidad*3)).max(1)
}
object cianuro {
  method rendimiento(cantidad) = (0)
}