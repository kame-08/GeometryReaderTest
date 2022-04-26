//
//  ContentView.swift
//  GeometryReaderTest
//
//  Created by Ryo on 2022/04/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //画面横幅
        let width = Int(UIScreen.main.bounds.width)
        //画面高さ
        let height = Int(UIScreen.main.bounds.height)
        
        let idoux=0
        
        VStack {
                    GeometryReader { geometry in
                        
                        let xzahyou = Int(geometry.frame(in: .global).origin.x)
                        
                                Text("X: \(xzahyou)\nY: \(geometry.frame(in: .global).origin.y)\nwidth: \(geometry.frame(in: .global).width)\nheight: \(geometry.frame(in: .global).height)\nmaxY: \(Int(geometry.frame(in: .local).maxY))\n\(height)")
                                .font(.largeTitle)
                        
                        
                        
                       
                        
                    }.frame(height: 300)
                .offset(x: CGFloat(idoux), y: 0)
            Spacer() }
            .edgesIgnoringSafeArea(.all)
        
     
        
        
    }
     
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
