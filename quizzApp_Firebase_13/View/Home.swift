//
//  Home.swift
//  quizzApp_Firebase_13
//
//  Created by emm on 18/01/2021.
//

import SwiftUI

struct Home: View {
    
    @State var show = false
    
    // Storing Level For fetching questions...
    @State var  set = "Round_1"
    
    // for analitics...
    @State var correct = 0
    @State var wrong = 0
    @State var answered = 0
    
    
    var body: some View {
        VStack{
            
            Text("emmgr")
                .font(.system(size: 38))
                .fontWeight(.heavy)
                .foregroundColor(.purple)
                .padding(.top)
            
            Text("choose the way you play !!!")
                .font(.title2)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .padding(.top, 8)
                .multilineTextAlignment(.center)
            
            Spacer(minLength: 0)
            
            // Level View...
            LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 20), count: 2),spacing: 35, content: {
                
                // four levels...
                ForEach(1...4, id: \.self) {index in
                    VStack(spacing: 15){
                        
                        Image("lv\(index)")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 150)
                        
                        Text("SwiftUI Quiz")
                            .font(.title2)
                            .fontWeight(.heavy)
                            .foregroundColor(.primary)
                        
                        Text("Level \(index)")
                            .foregroundColor(.primary)
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(15)
                    
                    // opening QA view as sheet...
                    .onTapGesture(perform: {
                        set = "Round_\(index)"
                        show.toggle()
                    })
                }
            })
            .padding()
            
            Spacer(minLength: 0)
        }
        .background(Color.primary.opacity(0.05).ignoresSafeArea())
        .sheet(isPresented: $show, content: {
            QA(correct: $correct, wrong: $wrong, answered: $answered, set: set)
        })
    }
}

