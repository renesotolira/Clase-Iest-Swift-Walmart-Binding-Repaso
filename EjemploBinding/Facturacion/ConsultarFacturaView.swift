//
//  ConsultarFacturaView.swift
//  EjemploBinding
//
//  Created by rene on 19/10/25.
//

import SwiftUI

struct ConsultarFacturaView: View {
    
    @State var tc: String = ""
    
    var body: some View {
        VStack{
            Text("Para reenviar tu factura es necesario ingresar el número de ticket")
            
            
            HStack(){
                Text("*").foregroundColor(.blue)
                    .offset(y:4)
                TextField(
                    "Número de Ticket o Factura",
                    text: $tc
                )
                .padding(.leading, 8)
                .background(Color.white)
                .cornerRadius(8)
                
                
            }
            
        }
    }
}

struct ConsultarFacturaView_Previews: PreviewProvider {
    static var previews: some View {
        ConsultarFacturaView()
    }
}
