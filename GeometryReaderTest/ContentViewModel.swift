//
//  ContentViewModel.swift
//  GeometryReaderTest
//
//  Created by Ryo on 2022/04/27.
//

import Foundation
import UIKit

class ContentViewModel: ObservableObject{
    @Published var idoux=0
    
    
    
    func plus() {
        idoux += 40
    }
}
