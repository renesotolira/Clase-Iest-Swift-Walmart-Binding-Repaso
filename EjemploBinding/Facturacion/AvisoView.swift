//
//  AvisoView.swift
//  EjemploBinding
//
//  Created by rene on 19/10/25.
//

import SwiftUI

struct AvisoView: View {
    
    let groupBoxText = "Estimado Cliente/Socio: Le informamos que conforme a las disposiciones fiscales mexicanas respecto a la emisión de Comprobantes Fiscales (Facturas), no es posible emitir Comprobantes Fiscales (Facturas) por la compra de Tarjetas de Regalo; sino que dicho comprobante se generará y se podrá solicitar al momento de hacer efectiva la Tarjeta de Regalo (Cuando se realice la compra de la mercancía con dicha tarjeta)."
    
    @State var showAllMessage: Bool = false
    func lineLimitGroupBox() -> Int?{
        return showAllMessage ? nil : 3
    }
    
    func onGroupBoxClick(){
        withAnimation(.easeInOut(duration: 0.5)) {
            self.showAllMessage.toggle()
        }
    }
    
    var body: some View {
        VStack{
            Text("Servicio de facturación en línea")
                .font(.title3)
            
            
            GroupBox(){
                VStack(spacing: 12){
                    Text("Importante")
                        .bold()
                    
                    Text(groupBoxText)
                        .font(.caption)
                        .lineLimit(lineLimitGroupBox())
                }
                
            }
            .onTapGesture {
                onGroupBoxClick()
            }
            
            Text("Seleccione una opción y capture los datos solicitados")
        }
        .padding(.horizontal, 12)
        
        Divider()
            .frame(height: 1)
            .background(Color.blue)
    }
}

struct AvisoView_Previews: PreviewProvider {
    static var previews: some View {
        AvisoView()
    }
}
