import rodados.*

class Pedido{
    const property distancia
    const property tiempo
    const property pasajeros
    const colores = #{}

    method velocidadRequerida(){
        return distancia/tiempo
    }

    method satisfachoPor(unRodado){
        return self.esDeVelocidadCompatible(unRodado.velocidad())
            and self.esDeCapacidadCompatible(unRodado.capacidad()) 
            and self.esDeColorCompatible(unRodado.color())
    }

    method esDeVelocidadCompatible(velocidad){
        return velocidad >= self.velocidadRequerida() + 10
    }

    method esDeCapacidadCompatible(capacidad){
        return capacidad >= pasajeros
    }

    method esDeColorCompatible(unColor){
        return not colores.contains(unColor)
    }
}