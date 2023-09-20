class Corsa{
    var property color

    method capacidad() = 4

    method velocidad() = 150

    method peso() = 1300
}

class Kwid {
    var property tanqueAdicional = false

    method capacidad() = if(tanqueAdicional){3}else{4}

    method velocidad() = if(tanqueAdicional){110}else{120}

    method peso() = if(tanqueAdicional){1350}else{1200}

    method color() = "azul"
}

object trafic{
    var property interior = comodo
    var property motor = bataton

    method capacidad() = interior.capacidad()

    method velocidad() = motor.velocidad()

    method peso() = 4000 + interior.peso() + motor.peso()

    method color() = "blanco"
}

object comodo{
    method capacidad() = 5

    method peso() = 700
}

object popular{
    method capacidad() = 12

    method peso() = 1000
}

object pulenta{
    method peso() = 800

    method velocidad() = 130
}

object bataton{
    method peso() = 500

    method velocidad() = 80
}

class Especial{
    var property capacidad
    var property velocidad
    var property peso
    var property color
}