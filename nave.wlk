class Nave{
  var velocidad 
  var direccion
  var combustible
   
  method avisar()
  method escapar()
  method tienePocaActividad() 

  method estaRelajada() = self.estaTranquila() and self.tienePocaActividad()
  
  method estaTranquila() = combustible >= 4000 and velocidad < 12000
  method recibirAtaque() {
    self.escapar()
    self.avisar()    
  }

  method prepararViaje(){
    combustible += 30000
    self.acelerar(5000)
  }

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