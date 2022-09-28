//
//  LenguajesModel.swift
//  AppLenguajes
//
//  Created by Paco Guerra on 27/09/22.
//

import Foundation

// estructura de datos con nombres e imagenes
struct LenguajesModel : Identifiable {
    
    var id = UUID()
    var titulo : String
    var descripcion : String
    var urlVideo : String
    var nombreImagen : String
    
}

extension LenguajesModel {
    public static var defaultLenguaje = LenguajesModel(titulo: "Python", descripcion: "Lenguaje de alto nivel", urlVideo: "https://www.youtube.com/watch?v=_uQrJ0TkZlc", nombreImagen: "python")
}
