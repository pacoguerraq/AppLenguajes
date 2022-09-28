//
//  LenguajesItemView.swift
//  AppLenguajes
//
//  Created by Paco Guerra on 27/09/22.
//

import SwiftUI

struct LenguajesItemView: View {
    
    // variables
    let lenguaje : LenguajesModel
    
    var body: some View {
        
        // cuadro
        Image(lenguaje.nombreImagen)
            .resizable()
            .scaledToFit()
            .frame(width: 400)
            .cornerRadius(20)
            .overlay(alignment: .topLeading, content: {
                Text(lenguaje.titulo)
                    .padding()
                    .foregroundColor(.white)
                    .font(.system(size: 33))
            })
        
    }
}

struct LenguajesItemView_Previews: PreviewProvider {
    static var previews: some View {
        LenguajesItemView(lenguaje : LenguajesModel.defaultLenguaje)
    }
}
