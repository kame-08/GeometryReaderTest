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
            
            ScrollView{
                GeometryReader { geometry in
                    
                    
                    //                    //x座標
                    //                    viewModel.xzahyou = Int(geometry.frame(in: .global).origin.x)
                    //                    //y座標
                    //                    viewModel.yzahyou = Int(geometry.frame(in: .global).origin.y)
                    //横幅
                    //                    (geometry.frame(in: .global).width)
                    //縦
                    //                    (geometry.frame(in: .global).height)
                    
                    Text("端末横\(viewModel.width)\n端末縦:\(viewModel.height)\nX座標:\(viewModel.xzahyou)\nY座標:\(viewModel.yzahyou)")
                        .background(Color(red: viewModel.randomColor.red, green: viewModel.randomColor.green, blue: viewModel.randomColor.blue))
                    
                    
                        .offset(x: CGFloat(viewModel.xzahyou), y: CGFloat(viewModel.yzahyou))
                        .animation(.linear.speed(0.5))
//                        .animation(.linear, value: viewModel.yzahyou)
                    //
                    //
//
//                        .animation(.linear, value: viewModel.xzahyou)
                    
                }.frame(height: CGFloat(viewModel.imageX))
                
            }.edgesIgnoringSafeArea(.all)
            
            HStack{
                Button("YButton") {
                    
                    viewModel.plusY()
                    
                    
                    viewModel.plusX()
                }.buttonStyle(.bordered)
                
                
                Button("Reset") {
                    viewModel.reset()
                    
                    
                }.buttonStyle(.bordered)
            }
        }
    }
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
