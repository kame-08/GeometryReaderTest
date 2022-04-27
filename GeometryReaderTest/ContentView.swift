//
//  ContentView.swift
//  GeometryReaderTest
//
//  Created by Ryo on 2022/04/26.
//

import SwiftUI


struct ContentView: View {
    @ObservedObject
    var viewModel = ContentViewModel()
    var body: some View {
        
        VStack{
            
            Button("Button") {
                viewModel.plus()
            }
            
            ScrollView{
                GeometryReader { geometry in
                    
                    //画面横幅
                    let width = UIScreen.main.bounds.width
                    //画面高さ
                    let height = UIScreen.main.bounds.height
                    //x座標
                    var xzahyou = geometry.frame(in: .global).origin.x
                    //y座標
                    let yzahyou = geometry.frame(in: .global).origin.y
                    
                    Text("X: \(xzahyou)\nY: \(yzahyou)\nwidth: \(geometry.frame(in: .global).width)\nheight: \(geometry.frame(in: .global).height)\nmaxY: \(Int(geometry.frame(in: .local).maxY))\n\(height)\n\(width)")
                        .font(.largeTitle)
                        .frame(width:width, height: height/2)
                        .offset(x: 0, y: CGFloat(viewModel.idoux))
                        .animation(Animation.linear)
                    
                }
            }.edgesIgnoringSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
