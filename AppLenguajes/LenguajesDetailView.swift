//
//  LenguajesDetailView.swift
//  AppLenguajes
//
//  Created by Paco Guerra on 27/09/22.
//

import SwiftUI

struct LenguajesDetailView: View {
    
    let lenguaje : LenguajesModel
    
    var body: some View {
        
        VStack {
            
            Image(lenguaje.nombreImagen)
                .resizable()
                .scaledToFit()
                .frame(width: 250)
                .clipShape(Circle())
                .shadow(radius: 7)
                .offset(y: -50)
            
            Text(lenguaje.titulo)
                .font(.title)
                .foregroundColor(.blue)
                .offset(y: -20)
            
            Text(lenguaje.descripcion)
                .multilineTextAlignment(.center)
                .padding()
            
            Link(destination: URL(string : lenguaje.urlVideo)!, label: {
                Label("Video", systemImage: "play.tv.fill")
            })
            
        }
        
    }
}

struct LenguajesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LenguajesDetailView(lenguaje: LenguajesModel.defaultLenguaje)
    }
}
