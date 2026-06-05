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
}
class Baliza inherits Nave //herencia{
  var color 
  methodcambiarColor(unColor){
    color = unColor
  }
  method prepararViaje(){
    color = "verde"
  }
//teminal const NaveBaliza1 = new Baliza(velocidad=10, direccion=0, color = "azul")
// crea el objeto con la clase 
