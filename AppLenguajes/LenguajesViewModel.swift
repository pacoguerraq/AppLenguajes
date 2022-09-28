//
//  LenguajesViewModel.swift
//  AppLenguajes
//
//  Created by Paco Guerra on 27/09/22.
//

import Foundation
import SwiftUI

class LenguajesViewModel : ObservableObject {
    
    // arreglo de lenguajes
    @Published var arregloLenguajes = [LenguajesModel]()
    
    init() {
        getLenguajes()
    }
    
    func getLenguajes() {
        
        var itemLenguaje : LenguajesModel
                
                
        itemLenguaje = LenguajesModel(titulo: "Python", descripcion: "Python es un lenguaje de alto nivel de programación interpretado cuya filosofía hace hincapié en la legibilidad de su código, se utiliza para desarrollar aplicaciones de todo tipo, ejemplos: Instagram, Netflix, Spotify, Panda 3D, entre otros.", urlVideo: "https://www.youtube.com/watch?v=_uQrJ0TkZlc", nombreImagen: "python")
        arregloLenguajes.append(itemLenguaje)
        
        itemLenguaje = LenguajesModel(titulo: "JavaScript", descripcion: "JavaScript es un lenguaje de programación interpretado, dialecto del estándar ECMAScript. Se define como orientado a objetos, ​ basado en prototipos, imperativo, débilmente tipado y dinámico.", urlVideo: "https://www.youtube.com/watch?v=PkZNo7MFNFg", nombreImagen: "js")
        arregloLenguajes.append(itemLenguaje)
        
        itemLenguaje = LenguajesModel(titulo: "Java", descripcion: "Java es un lenguaje de programación y una plataforma informática que fue comercializada por primera vez en 1995 por Sun Microsystems. Hay muchas aplicaciones y sitios web que no funcionarán, probablemente, a menos que tengan Java instalado, y cada día se crean más. Java es rápido, seguro y fiable.", urlVideo: "https://www.youtube.com/watch?v=eIrMbAQSU34", nombreImagen: "java")
        arregloLenguajes.append(itemLenguaje)

        
    }
}

