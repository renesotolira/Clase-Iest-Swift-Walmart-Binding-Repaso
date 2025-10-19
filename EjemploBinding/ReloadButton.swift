//
//  ReloadButton.swift
//  EjemploBinding
//
//  Created by rene on 19/10/25.
//

import SwiftUI

struct ReloadButton: View {
    @Binding var showLoading: Bool
    @State var showReloadText: Bool
    func loadingToggle(){
        withAnimation(){
            showLoading.toggle()
        }
    }
    
    var body: some View {
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
    }
}

struct ReloadButton_Previews: PreviewProvider {
    struct PreviewWrapper: View {
        @State var showLoading = false
        @State var showReloadText = true

        var body: some View {
            ReloadButton(showLoading: $showLoading, showReloadText: showReloadText)
        }
    }

    static var previews: some View {
        PreviewWrapper()
    }
}
