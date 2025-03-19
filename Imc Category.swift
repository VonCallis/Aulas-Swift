//
//  IMCCategory.swift
//  IMC
//
//  Created by Pietro Rischi Nunes on 13/03/25.
//

enum IMCCategory: String {
    case lowWeight = "Baixo peso"
    case normalWeight = "Peso normal"
    case overWeight = "Sobrepeso"
    case obesityOne = "Obesidade Grau 1"
    case obesityTwo = "Obesidade Grau 2"
    case obesityThree = "Obesidade Grau 3"
    
    static func from(_ imc: Float) -> IMCCategory? {
        switch imc {
        case 0..<18.5: return .lowWeight
        case 18.5..<24.9: return .normalWeight
        case 25..<29.9: return .overWeight
        case 30..<34.9: return .obesityOne
        case 35..<39.9: return .obesityTwo
        case 40...: return .obesityThree
        default: return nil
        }
    }
}
