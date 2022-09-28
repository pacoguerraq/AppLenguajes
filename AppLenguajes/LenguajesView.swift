//
//  ContentView.swift
//  AppLenguajes
//
//  Created by Paco Guerra on 27/09/22.
//

import SwiftUI

struct LenguajesView: View {
    
    @StateObject var LenguajesVM = LenguajesViewModel()
    
    var body: some View {
        
        NavigationView {
            
            // VStack
            ZStack {
                
                Color(red: 0.9, green: 0.9, blue: 0.9)
                    .ignoresSafeArea()
                
                VStack {
                    
                    // Titulo
//                    Text("Lenguajes de programación")
//                        .fontWeight(.bold)
//                        .font(.system(size: 40))
                        
                    ScrollView(.vertical) {
                        
                        // Lista
                        VStack {
                            
                            ForEach(LenguajesVM.arregloLenguajes) { item in
                                
                                NavigationLink(destination: LenguajesDetailView(lenguaje: item), label: {
                                    LenguajesItemView(lenguaje: item)
                                })
                                
                            }
                            
                        } // VStack
                        
                    } // ScrollView
                    
                } // VStack

            } // ZStack
            .navigationTitle("Lenguajes de programación")
            
        }
        
    }
}

struct LenguajesView_Previews: PreviewProvider {
    static var previews: some View {
        LenguajesView()
    }
}
