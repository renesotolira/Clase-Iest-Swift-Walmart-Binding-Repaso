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
    
    func loadingToggle(){
        withAnimation(){
            showLoading.toggle()
        }
    }
    
    /*tabs tienen
     index, background, subtitle, contenido
     */
    
    @State var selectedTabIndex: Int = 0
    let subtitles = ["Facturar / Refacturar", "Consultar por Número de Ticket"]
    
    func getTabSubtitle() -> String{
        return subtitles[selectedTabIndex]
    }
    
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
    
    func showTabContent(id: Int) -> Bool{
        if(id == selectedTabIndex){
            return true
        }else{
            return false
        }
    }
    
    //tab0
    
    @State var rfc: String = ""
    @State var cp: String = ""
    @State var tc: String = ""
    @State var tr: String = ""
    
    
    var body: some View {
        ZStack{
            ScrollView{
                VStack(alignment: .leading){
                    
                
                    Group(){
                    VStack(spacing:8){
                        Image(systemName: "rays")
                            .font(.largeTitle)
                            .foregroundColor(.yellow)
                        
                        Text("Waltmart México y Centro América")
                            .font(.largeTitle)
                            
                            .foregroundColor(.white)
                            
                            .multilineTextAlignment(.center)
                    } .frame(maxWidth: .infinity)
                    .padding(.vertical)
                    .background(Color.blue)
                    
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
                    
                    VStack(spacing: 16){
                        Text(getTabSubtitle()).font(.title)
                            .multilineTextAlignment(.center)
                        
                        if(showTabContent(id: 0)){
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
                        }else{
                            
                        
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
                        
                    }.padding()
                    
                    
                    Divider()
                        .frame(height: 1)
                        .background(Color.gray)
                    
                    
                    Text("Los campos marcados con: * son obligatorios.")
                        .foregroundColor(.blue)
                        .padding(.horizontal)
                    
                    
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
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.gray.opacity(0.33))
            .ignoresSafeArea()
            
            
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
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .overlay(
            Button(action: {
                self.loadingToggle()
            }){
                if showReloadText{
                    Label("Recargar", systemImage: "arrow.clockwise")
                        .transition(.opacity)
                        .onAppear {
                            
                            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                                withAnimation(.easeOut) {
                                    self.showReloadText = false
                                }
                            }
                        }
                    
                }else{
                    Image(systemName: "arrow.clockwise")
                        .transition(.opacity)
                }
            }
            
            .padding(.horizontal, 8)
            .padding(.vertical, 8)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(12)
            .padding(.horizontal, 8)
            .padding(.bottom, 32)
            .opacity(showLoading ? 0 : 1)
            
            
            , alignment: .bottomTrailing
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
