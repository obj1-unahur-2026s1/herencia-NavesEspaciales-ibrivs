import nave.*
class Combate inherits Nave {
  var estaInvisible
  var misilesDesplegados
  const mensajes = []

  override method estaTranquila() = not self.misilesDesplegados()

  method estaInvisible() = estaInvisible
  method misilesDesplegados() = misilesDesplegados
  method mensajesEmitidos() = mensajes.size()
  method primerMensajeEmiido() = mensajes.first()
  method ultimoMensajeEmitido() = mensajes.last()
  method esEscueta() = not mensajes.any({m => m.size() > 30})
  method emitioMensaje(unMensaje) = mensajes.any({m => m == unMensaje}) 

  override method prepararViaje() {
    self.ponerseVisible()
    self.replegarMisiles()
    self.acelerar(15000)
    self.emitirMensaje("Saliendo en misión")
    super()
  }

  method ponerseVisible() {
    estaInvisible = false
  }
  method ponerseInvisible() {
    estaInvisible = true
  }

  method desplegarMisiles(){
    misilesDesplegados = true
  }
  method replegarMisiles() {
    misilesDesplegados = false
  }

  method emitirMensaje(unMensaje) {
    mensajes.add(unMensaje)
  }

  override method escapar() {
    self.acercarseUnPocoAlSol()
    self.acercarseUnPocoAlSol()
  }
  override method avisar(){
    self.emitirMensaje("Amenaza recibida")
  }
}
class Sigilosa inherits Combate{
    override method estaTranquila() = super() and not self.estaInvisible()
    override method escapar(){
        self.desplegarMisiles()
        self.ponerseInvisible()
    }
}