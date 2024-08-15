//
//  ContentView.swift
//  War Card Game
//
//  Created by Rahul Jadhav on 14/08/24.
//

import SwiftUI

struct ContentView: View {
   
    @State var playercard = "back"
    @State var cpucard = "back"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    
    
    var body: some View {
        
        ZStack{
            Image("background-wood-cartoon")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playercard)
                    Spacer()
                    Image(cpucard)
                    Spacer()
                }
                Spacer()
                
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
            }
        }
    }
    
    func deal() {
        // Randomize the card
         
        var playercardvalue =  Int.random(in: 2...14)
        
        playercard = "card" + String(playercardvalue)
        var cpucardvalue = Int.random(in: 2...14)
        cpucard = "card" + String(cpucardvalue)
        // Update the scores
        print(playercardvalue , " " , cpucardvalue)
        
        if (playercardvalue > cpucardvalue) {
            playerScore += 1
        }
        else if (cpucardvalue > playercardvalue) {
            cpuScore += 1
        }
        print(playerScore , " " , cpuScore)
        
        
    }
}

struct ContentView_Previews : PreviewProvider {
    static var previews: some View{
        ContentView()
    }
}
