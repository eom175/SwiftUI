//
//  ContentView.swift
//  Memorize
//
//  Created by 엄지용 on 7/26/25.
//

import SwiftUI // SwiftUi 불러옴

//Swift에서는  struct 가 핵심
//상속존재X
//View는 구조체 X
struct ContentView: View
{ // 이 안에 있는 것들은 어딘가에 저장 안됨
    // 매 계산마다 그냥 계산됨
    //some View : 코드를 실행
    var body: some View{
        HStack{
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
            
            
            
        }
        .foregroundColor(.orange)
        .padding()
        

    }
    struct CardView: View{
        var isFaceUp: Bool = false
        var body: some View{
            ZStack {
                if isFaceUp {
                    RoundedRectangle(cornerRadius:12).foregroundColor(.white)
                    RoundedRectangle(cornerRadius:12).strokeBorder(lineWidth:2)
                    Text("👻").font(.largeTitle)
                }
                else{
                    RoundedRectangle(cornerRadius:12)
                }
            }
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider
    {
        static var previews: some View
        {
            ContentView()
        }
    }
    
}
