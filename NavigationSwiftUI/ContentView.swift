//
//  ContentView.swift
//  NavigationSwiftUI
//
//  Created by marco rodriguez on 01/04/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Screen(titulo: "Inicio", texto: "Primer Pantalla", imagenName: "house")
        
        }
    }
}

struct Screen: View {
    let titulo: String
    let texto: String
    let imagenName: String
    
    var body: some View {
        VStack {
            Image(systemName: imagenName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding()
            
            Text(texto)
                .font(.system(size: 30, weight: .light, design: .default))
                    .padding()
            NavigationLink(
                destination: segundaPantalla(),
                label: {
                    continuarButton(color: .purple)
                })
        }.navigationTitle(titulo)
    }
}

struct segundaPantalla: View {
    var body: some View {
        
        VStack {
            Image(systemName: "person")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding()
            
            Text("Segunda Pantalla")
                .font(.system(size: 30, weight: .light, design: .default))
                    .padding()
            NavigationLink(
                destination: Text("Bienvenido")
                    .font(.system(size: 50, weight: .black, design: .rounded))
                    .padding(),
                label: {
                    continuarButton(color: .green)
                })
        }.navigationTitle("Segunda Pantalla")
    
    }
}


struct continuarButton: View {
    
    let color : Color
    
    var body: some View {
        Text("Continuar")
           .frame(width: 200, height: 50, alignment: .center
           )
           .background(color)
           .foregroundColor(.white)
           .cornerRadius(25)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
