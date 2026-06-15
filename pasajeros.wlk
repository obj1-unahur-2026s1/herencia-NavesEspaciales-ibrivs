import nave.*
 class Pasajeros inherits Nave {
  var property pasajeros 
  var bebidas 
  var comida 
  var cantRacionesServidas 
  var cantBebidasServidas

  override method tienePocaActividad() = 0

  override method prepararViaje() {
    self.servirComida(pasajeros * 4)
    self.servirBebida(pasajeros * 6)
    self.acercarseUnPocoAlSol()
    super()
  }

  method cargarBebidas(cantBebidas){
    bebidas += cantBebidas
  }
  method descargarBebidas(cantBebidas){
    bebidas = (bebidas - cantBebidas).max(0)
  }
  method servirBebida(cantBebidas){
    self.descargarBebidas(cantBebidas)
    cantBebidasServidas += 1
  }

  method cargarComida(cantComida){
    comida += cantComida
  }
  method descargarComida(cantComida){
    comida = (comida - cantComida).max(0)
  }
  method servirComida(cantComida) {
    self.descargarComida(cantComida)
    cantRacionesServidas += 1
  }

  override method escapar() {
    velocidad *= 2
  }
  override method avisar(){
    self.descargarComida(pasajeros)
    self.descargarBebidas(pasajeros)
  }
}
class Hospital inherits Pasajeros{
  var tieneQuirofanos 
  method tieneQuirofanos() = tieneQuirofanos
  method prepararQuirofanos() {
    tieneQuirofanos = true
  }
  override method recibirAtaque(){
    super() 
    self.prepararQuirofanos()
  }
}
