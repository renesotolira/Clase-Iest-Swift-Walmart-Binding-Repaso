//
//  HeaderView.swift
//  EjemploBinding
//
//  Created by rene on 19/10/25.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
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
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
