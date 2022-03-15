//
//  ContentView.swift
//  Dicee SwiftUI
//
//  Created by Ilya Selin on 15.03.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var rightDiceNubmer = 1
    @State var leftDiceNumber = 1
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                
                Spacer() // Раздвигает объекты
                
                HStack {
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNubmer)
                }
                .padding()
                
                Spacer()
                
                Button(action:{
                    self.rightDiceNubmer = Int.random(in: 1...6)
                    self.leftDiceNumber = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .bold()
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }.background(Color.red)
                
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

struct DiceView: View {
    let n: Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}
