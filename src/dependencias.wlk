import rodados.*
import pedidos.*

class Dependencia{
    var property empleados
    const flota = []
    const pedidos = []

    method agregarAFlota(rodado){
        flota.add(rodado)
    }

    method quitarDeFlota(rodado){
        flota.remove(rodado)
    }

    method pesoTotalFlota(){
        return flota.sum({rodado => rodado.peso()})
    }

    method estaBienEquipada(){
        return flota.size() >= 3 and self.todosSuperanVelocidad(100)
    }

    method todosSuperanVelocidad(velocidad){
        return flota.all({rodado => rodado.velocidad() >= velocidad})
    }

    method capacidadTotalEnColor(color){
        return self.flotaDecolor(color).sum(rodado => rodado.capacidad())
    }

    method flotaDecolor(color){
        return flota.filter({rodado => rodado.color() == color})
    }

    method colorDelRodadoMasRapido(){
        return self.rodadoMasRapido().color()
    }

    method rodadoMasRapido(){
        if (flota.isEmpty()){
            self.error("Nuestra flota esta vacia, no podemos saber cual es el mas rapido")
        }
        return flota.max({rodado => rodado.velocidad()})
    }

    method capacidadFaltante(){
        return 0.max(empleados - self.capacidadTotalFlota())
    }

    method capacidadTotalFlota(){
        return flota.sum(rodado => rodado.capacidad())
    }

    method esGrande(){
        return empleados >= 40 and flota.size() >= 5
    }

    method ningunoSatisface(pedido){
        return not rodados.any( rodado => pedido.satisfachoPor(rodado))
    }

    method pedidosInsatisfechos(){
        return pedidos.filter({ pedido => self.ningunoSatisface(pedido)})
    }
}