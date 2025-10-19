//
//  TabsView.swift
//  EjemploBinding
//
//  Created by rene on 19/10/25.
//

import SwiftUI

struct TabsView: View {
    @Binding var selectedTabIndex: Int
    
    func getTabBackground(id: Int) -> Color{
        if(id == selectedTabIndex){
            return Color.blue
        }else{
            return Color.gray
        }
    }
    
    func onTabClick(id: Int){
        withAnimation(){
            self.selectedTabIndex = id
        }
    }
    
    var body: some View {
        HStack(spacing: 0){
            Button(action:{
                onTabClick(id: 0)
            }){
                Text("Facturar")
                    .frame(maxWidth: .infinity)
                    .padding(6)
                    .background(getTabBackground(id: 0))
            }
            
            Button(action:{
                onTabClick(id: 1)
            }){
                Text("Consultar Factura")
                    .frame(maxWidth: .infinity)
                    .padding(6)
                    .background(getTabBackground(id: 1))
            }
        }.foregroundColor(.white)
    }
}

struct TabsView_Previews: PreviewProvider {
    static var previews: some View {
        TabsView(selectedTabIndex: .constant(0))
    }
}
