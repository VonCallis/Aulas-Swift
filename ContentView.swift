//
//  ContentView.swift
//  IMC
//
//  Created by Pietro Rischi Nunes on 13/03/25.
//

import SwiftUI

struct ContentView: View {
    @State var weight: String
    @State var height: String
    @State var result: String
    
    var body: some View {
        VStack {
            TextField("Digite seu peso.", text: $weight)
                .padding(8)
            TextField("Digite sua altura", text: $height)
                .padding(8)
            Button("Calcular") {
                guard let weight = Float(weight),
                      let height = Float(height) else {
                    result = "Ocorreu um erro."
                    return
                }
                let imc = weight / pow(height, 2)
                guard let category = IMCCategory.from(imc) else {
                    result = "Ocorreu um erro."
                    return
                }
                result = """
                         Seu IMC é: \(imc)
                         Sua categoria é: \(category.rawValue)
                         """
            }
            Text(result)
                .padding(8)
        }.padding(8)
        Spacer()
    }
}

#Preview {
    ContentView(weight: "", height: "", result: "")
}
