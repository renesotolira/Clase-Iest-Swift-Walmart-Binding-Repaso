//
//  FacturarView.swift
//  EjemploBinding
//
//  Created by rene on 19/10/25.
//

import SwiftUI

struct FacturarView: View {
    @State var rfc: String = ""
    @State var cp: String = ""
    @State var tc: String = ""
    @State var tr: String = ""
    
    var body: some View {
        VStack{
            HStack(){
                Text("*").foregroundColor(.blue)
                    .offset(y:4)
                TextField(
                    "Membresía o RFC",
                    text: $rfc
                )
                .padding(.leading, 8)
                .background(Color.white)
                .cornerRadius(8)
                
                Image("") .padding(1)
            }
            .padding(.trailing)
            
            HStack(){
                TextField(
                    "Código Postal",
                    text: $cp
                )
                .padding(.leading, 8)
                .background(Color.white)
                .cornerRadius(8)
                
                Image("") .padding(1)
            }.padding(.horizontal)
            
            HStack{
                
            }.padding(8)
            
            HStack(){
                Text("*").foregroundColor(.blue)
                    .offset(y:4)
                TextField(
                    "Número de Ticket",
                    text: $tc
                )
                .padding(.leading, 8)
                .background(Color.white)
                .cornerRadius(8)
                
                Image(systemName: "questionmark.circle.fill")
                    .foregroundColor(.blue)
                    .padding(1)
                    .background(
                        Circle()
                            .stroke(Color.gray, lineWidth: 1)        )
                
                
                
            }
            
            HStack(){
                Text("*").foregroundColor(.blue)
                    .offset(y:4)
                TextField(
                    "# Transacción",
                    text: $tr
                )
                .padding(.leading, 8)
                .background(Color.white)
                .cornerRadius(8)
                
                Image(systemName: "questionmark.circle.fill")
                    .foregroundColor(.blue)
                    .padding(1)
                    .background(
                        Circle()
                            .stroke(Color.gray, lineWidth: 1)        )
                
                
                
            }
        }
    }
}

struct FacturarView_Previews: PreviewProvider {
    static var previews: some View {
        FacturarView()
    }
}
