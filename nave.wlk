class Nave{
  var velocidad 
  var direccion
  var pioloto = pilotoA
  method acelerar(cuanto){
    velocidad = (velocidad + cuanto).min(1000)
  }
  method desacelerar(cuanto){
    velocidad = (velocidad - cuanto).max(0)
  }
  method escaparDelSol(){
    direccion += 10
  }
  method alejarDelSol(){
    direccion -= 10
  }
  method ponerseParaleloAlSol(){
    direccion = 0
  }
  method acercarseUnPocoAlSol(){
    direccion = (direccion + 1).min(10)
  }
  method alejarseUnPocoDelSol(){
    direccion = (direccion - 1).max(-10)
  }
  method prepararViaje()
}
class Baliza inherits Nave { //herencia
  var color 
  methodcambiarColor(unColor){
    color = unColor
  }
  override method prepararViaje() { //sobreescribir
    color = "verde"
    self.ponerseParaleloAlSol()
  }
 class Pasajeros inherits Nave {
  var pasajeros
  var racionesComida
  var bebidas
  method cargarBebidas(cantBebidas){
    bebidas += cantBebidas
  }
  method descargarBebidas(cantBebidas){
    bebidas = (bebidas - cantBebidas).max(0)
  }
  method cargarComida(cantComida){
    comida += cantComida
  }
  method descargarComida(cantComida){
    comida = (comida - cantComida).max(0)
  }
}
class Combate inherits Nave {
  

//teminal const NaveBaliza1 = new Baliza(velocidad=10, direccion=0, color = "azul")
// crea el objeto con la clase 
