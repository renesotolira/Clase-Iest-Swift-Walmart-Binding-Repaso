//
//  FooterView.swift
//  EjemploBinding
//
//  Created by rene on 19/10/25.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button(action:{
                    
                }){
                    Text("Cancelar")
                }
                .padding(.horizontal)
                .padding(.vertical, 8)
                .background(Color.gray)
                .cornerRadius(8)
                
                Spacer()
                Button(action:{
                    
                }){
                    Text("Continuar")
                }
                .padding(.horizontal)
                .padding(.vertical, 8)
                .background(Color.blue)
                .cornerRadius(8)
                
                Spacer()
            }.padding()
            .foregroundColor(.white)
            
            VStack(alignment: .center){
                Text("Compré en línea")
                .font(.title)
                Text("Da clic en el formato de la compra")
                    .font(.footnote)
                    
            }.frame(maxWidth: .infinity)
         
            Group(){
                HStack{
                    
                    Image(systemName: "chevron.up")
                        .font(.largeTitle)
                        .foregroundColor(.yellow)
                        .padding(16)
                        .background(
                                Circle()
                                    .fill(Color.blue)
                            )
                        
                    
                HStack(spacing:-8){
                Image(systemName: "chevron.left")
                Image(systemName:"chevron.right")
                }
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(12)
                    .background(
                            Circle()
                                .fill(Color.blue)
                        )
               
                
                Image(systemName: "rays")
                    .font(.largeTitle)
                    .foregroundColor(.yellow)
                    .padding(8)
                    .background(
                            Circle()
                                .fill(Color.blue)
                        )
                
                Image(systemName: "rays")
                    .font(.largeTitle)
                    .foregroundColor(.yellow)
                    .padding(8)
                    .background(
                            Circle()
                                .fill(Color.green)
                        )
                }
                .frame(maxWidth: .infinity)
                
            Spacer()
            
            HStack{
                Text("© Walmart México 2025")
                    .frame(maxWidth: .infinity)
              //  Spacer()
                Text("Aviso de privacidad")
                    .frame(maxWidth: .infinity)
            }
            .font(.caption)
            .foregroundColor(Color.white)
            .padding(8)
            .background(Color.blue)
            .padding(.top, 16)
            }
        }
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
    }
}
