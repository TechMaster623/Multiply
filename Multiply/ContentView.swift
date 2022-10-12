//
//  ContentView.swift
//  Multiply
//
//  Created by Faiz Ali on 9/15/22.
//

import SwiftUI

struct ContentView: View {
    @State private var firstNumberTextField = ""
    @State private var secondNumberTextField = ""
    @State private var calculation = 0
    @State private var imageName = ""
    var body: some View {
        VStack{Text("Hello, world!")
                .padding()
            TextField("Enter a Number", text: $firstNumberTextField)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .multilineTextAlignment(.center)
                .frame(width: 200, height: 30, alignment: .center)
                .frame(width: 200, height: 30, alignment: .center)
                .font(.body)
                .padding()
            Text("x")
            TextField("Enter a Number" , text: $secondNumberTextField)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .multilineTextAlignment(.center)
                .frame(width: 200, height: 30, alignment: .center)
                .frame(width:200, height:30, alignment: .center)
                .font(.body)
                .padding()
            Button("Calculate") {
                if let firstNumber = Int(firstNumberTextField) {
                    if let secondNumber = Int(secondNumberTextField) {
                        calculation = firstNumber * secondNumber
                        }
                    }
                }
                Text(String(calculation))
                    .multilineTextAlignment(.center)
                    .frame(width: 200, height: 30, alignment: .center)
                    .font(.body)
                //padding()
                
                Image(imageName)
                    .resizable()
                    .frame(width: 100, height: 100, alignment: .center)
                    .aspectRatio(contentMode: .fit)
            
                    .padding()
            
                if calculation == 64{
                    Image("Mario")
                    .resizable()
                    .scaledToFit()
                    
                    }
                    else if calculation % 2 == 0 {
                    Image("FunnyNFL")
                    .resizable()
                    .scaledToFit()
                        
                    } else{
                        
                    Image("funnyNBA")
                    .resizable()
                    .scaledToFit()
                }
                Spacer()
            }
            //.padding()
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    


