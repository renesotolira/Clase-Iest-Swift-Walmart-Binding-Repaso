//
//  ContentView.swift
//  EjemploBinding
//
//  Created by rene on 19/10/25.
//

import SwiftUI

struct ContentView: View {
    @State var showReloadText: Bool = true
    @State var showLoading: Bool = false
   
    
    @State var selectedTabIndex: Int = 0
    let subtitles = ["Facturar / Refacturar", "Consultar por Número de Ticket"]
    
    func getTabSubtitle() -> String{
        return subtitles[selectedTabIndex]
    }
    
    func showTabContent(id: Int) -> Bool{
        if(id == selectedTabIndex){
            return true
        }else{
            return false
        }
    }

    var body: some View {
        ZStack{
            ScrollView{
                VStack(alignment: .leading){
                    
                    Group(){
                        HeaderView()
                        AvisoView()
                    }
                    
                    TabsView(selectedTabIndex: $selectedTabIndex)
                    
                    VStack(spacing: 16){
                        Text(getTabSubtitle()).font(.title)
                            .multilineTextAlignment(.center)
                        
                        if(showTabContent(id: 0)){
                            FacturarView()
                        }else{
                            ConsultarFacturaView()
                        }
                        
                    }.padding()
                    
                    
                    Divider()
                        .frame(height: 1)
                        .background(Color.gray)
                    
                    Text("Los campos marcados con: * son obligatorios.")
                        .foregroundColor(.blue)
                        .padding(.horizontal)
                    
                    FooterView()
                    
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.gray.opacity(0.33))
            .ignoresSafeArea()
            
            LoadingView(showLoading: $showLoading)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .overlay(
            ReloadButton(showLoading: $showLoading, showReloadText: showReloadText)
            , alignment: .bottomTrailing
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
