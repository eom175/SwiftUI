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
    let emojis: Array<String> = ["👻",  "🎃", "🕷️", "👿", "👿"]

    var body: some View{

        HStack{
            ForEach(emojis.indices, id: \.self){ //반복문
                index in //index가 for문에셔 i 역할
                CardView(content: emojis[index])

            }
            
            
            
        }
        .foregroundColor(.orange)
        .padding()
        
       
    }
    struct CardView: View
    {
        let content: String
        @State var isFaceUp = true //let isFaceUp 도 가능. 근데 이러면 위의 CardView에서 인수를 false로만 써야 함
        //State 써서 변경할 수 있게
        
        
        var body: some View
        {
            ZStack
            {
                //let base = RoundedRectangle(cornerRadius:12) // Type Inference(유형추론)
                let base = Circle()
                if isFaceUp
                {
                    base.fill(.white)
                    base.strokeBorder(lineWidth: 2)
                    Text(content).font(.largeTitle)
                }
                
                else
                {
                    base.fill()//.fill()이 기본설정
                }
            }.onTapGesture{//View를 탭할 때 이 함수 호출 , onTapGesture(count:2) --> 더블 탭 했을 때 호출
                
                isFaceUp.toggle()

             }
            
        }
    }
}
#Preview{
    ContentView()
}

