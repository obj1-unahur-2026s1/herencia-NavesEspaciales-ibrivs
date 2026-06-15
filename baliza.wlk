import nave.*
class Baliza inherits Nave {
  var property color
  var cantVecesCambiadas = 0
  
  override method tienePocaActividad() = cantVecesCambiadas == 0
  override method estaTranquila() = super() and color != "rojo"

  method cambiarColor(unColor){
    color = unColor
    cantVecesCambiadas += 1
  }

  override method prepararViaje() {
    color = "verde"
    self.ponerseParaleloAlSol()
    super()
  }

  override method escapar(){
    self.acercarseUnPocoAlSol()
  }
  override method avisar(){
    self.color("rojo")
  }
}