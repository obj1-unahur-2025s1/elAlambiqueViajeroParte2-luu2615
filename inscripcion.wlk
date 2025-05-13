import elAlambiqueViajero.*

object centroDeInscripcion{
    var inscriptos = []
    var rechazados = []
    var property lugarDeCarrera = hurlingham
    method inscribirSiPuede(vehiculo) {
        if(lugarDeCarrera.puedeLlegar(vehiculo)){
            inscriptos.add(vehiculo)
        } else {
            rechazados.add(vehiculo)
        }
    }
    method inscriptos() = inscriptos
    method cambiarLugar(lugar) {
      lugarDeCarrera = lugar
      inscriptos.forEach({vehiculo => self.inscribirSiPuede(vehiculo)})
    }
    method empezarCarrera() {
      
    }
}