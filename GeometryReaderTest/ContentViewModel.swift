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
    
    
    //画面横
    var width = Int(UIScreen.main.bounds.width)
    //画面縦
    var height = Int(UIScreen.main.bounds.height)
    
    //画像縦
    var imageX = 90
    
    //    var zahyou = (x:0,y:0) タプルもありかも
    //X座標軸の壁に当たる度変化する
    var xbool = true
    var ybool = true
    //X座標
    @Published var xzahyou = 0
    //X座標下
    //    var xzahyouSita = xzahyou + imageX
    //Y座標
    @Published var yzahyou = 0
    //Y座標右
    
   @Published var randomColor = (red: 100.0, green: 0.0, blue: 0.0)
    

    func plusY() {
        
    
        
        if xzahyou + imageX >= width && xbool{
            xbool = false
            //TODO: 色変える処理
            calorChange()
        }else if xzahyou <= 0{
            xbool = true
            //TODO: 色変える処理
            calorChange()
        }

        if xbool {
            xzahyou += 50
        } else {
            xzahyou -= 50
        }
        
    }
    
    //色をランダムに
    func calorChange(){
        randomColor.red = Double.random(in: 0..<255)
        randomColor.green = Double.random(in: 0..<255)
        randomColor.blue = Double.random(in: 0..<255)
    }
    
    func plusX() {
        
        if yzahyou + imageX > height && ybool{
            ybool = false
            //TODO: 色変える処理
            calorChange()
        }else if yzahyou <= 0{
            ybool = true
            //TODO: 色変える処理
            calorChange()
        }
        
        if ybool{
            yzahyou += 50
        } else {
            yzahyou -= 50
        }
        
    }
    
    func reset() {
        yzahyou = 0
        xzahyou = 0
        xbool = true
        ybool = true
    }
    
    
}
