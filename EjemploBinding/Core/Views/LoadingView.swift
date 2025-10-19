//
//  LoadingView.swift
//  EjemploBinding
//
//  Created by rene on 19/10/25.
//

import SwiftUI

struct LoadingView: View {
    @Binding var showLoading: Bool
    
    func loadingToggle(){
        withAnimation(){
            showLoading.toggle()
        }
    }
    
    var body: some View {
        if(showLoading){
            VStack(spacing: 40){
                Image(systemName: "rays")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Text("Comunicandose con el servidor...\nPor favor espere un momento")
                    .lineSpacing(15)
                    .font(.headline)
                
                Button(action: {
                    self.loadingToggle()
                }){
                    Text("Cancelar carga")
                }
                .padding()
                .background(Color.gray)
                .cornerRadius(12)
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.black)
            .foregroundColor(.white)
            .ignoresSafeArea()
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView(showLoading: .constant(true))
    }
}
