//Rna Transcription
//Given a DNA strand, return its RNA complement (per RNA transcription).
//
//Both DNA and RNA strands are a sequence of nucleotides.
//
//The four nucleotides found in DNA are adenine (A), cytosine (C), guanine (G) and thymine (T).
//
//The four nucleotides found in RNA are adenine (A), cytosine (C), guanine (G) and uracil (U).
//
//Given a DNA strand, its transcribed RNA strand is formed by replacing each nucleotide with its complement:
//
//G -> C
//C -> G
//T -> A
//A -> U

import Foundation

enum Nucleotides: Character {
    
    case adeline = "a"
    case cytosine = "c"
    case guanine = "g"
    case thymine = "t"
    case uracil = "u"
    
    static let values: [Nucleotides] = [.adeline, .cytosine, .guanine, .thymine, .uracil]
}

struct Nucleotide {
    
    var value: String
    
    init(_ value: String) {
        self.value = value
    }
    
    var complementOfDNA: String {
        for (index, char) in value.characters.enumerated() {
            
            guard let nucleotide = Nucleotides(rawValue: char) else {
                return
            }
            
            switch nucleotide {
            case .adeline:
                return .uracil
            case .cytosine:
                return .guanine
            case .guanine:
                return .cytosine
            case .thymine:
                return .adeline
            default:
                return value
            }
        }
        
        return ""
    }
}
