//
//  ContentView.swift
//  GeometryReaderTest
//
//  Created by Ryo on 2022/04/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        GeometryReader { geometry in
            var idoux=0
            //画面横幅
            let width = UIScreen.main.bounds.width
            //画面高さ
            let height = UIScreen.main.bounds.height
            //x座標
            let xzahyou = geometry.frame(in: .global).origin.x
            //y座標
            let yzahyou = geometry.frame(in: .global).origin.y
            
            Text("X: \(xzahyou)\nY: \(yzahyou)\nwidth: \(geometry.frame(in: .global).width)\nheight: \(geometry.frame(in: .global).height)\nmaxY: \(Int(geometry.frame(in: .local).maxY))\n\(height)\n\(width)")
                .font(.largeTitle)
            
            //.frame(width:width, height: height)
                .offset(x: CGFloat(idoux), y: 0)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
