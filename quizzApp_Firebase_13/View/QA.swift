//
//  QA.swift
//  quizzApp_Firebase_13
//
//  Created by emm on 18/01/2021.
//

import SwiftUI

struct QA: View {
    
    @Binding var correct: Int
    @Binding var wrong: Int
    @Binding var answered: Int
    var set: String
    @StateObject var data = QuestionViewModel()
  
    
    var body: some View {
        
        VStack {
            // Top progress view...
            
            ZStack(alignment: Alignment(horizontal: .leading, vertical: .center), content: {
                Capsule()
                    .fill(Color.secondary.opacity(0.5))
                    .frame(height: 6)
                
                Capsule()
                    .fill(Color.green)
                    .frame(width: 100, height: 6)
            })
            .padding()
            
            // Correct and wrong count ...
            HStack {
                Label(
                    title: { Text(correct == 0 ? "" : "\(correct)")
                        .font(.largeTitle)
                        .foregroundColor(.black)
                    },
                    icon: { Image(systemName: "checkmark")
                        .font(.largeTitle)
                        .foregroundColor(.green)
                    })
                
                Spacer()
                
                Label(
                    title: {  Text(wrong == 0 ? "" : "\(wrong)")
                        .font(.largeTitle)
                        .foregroundColor(.black)
                    },
                    icon: { Image(systemName: "xmark")
                        .font(.largeTitle)
                        .foregroundColor(.red)
                    })
            }
            .padding()
            
//            Spacer(minLength: 6)
            // Question View...
            ZStack {
                ForEach(data.questions.reversed().indices){ index in
                    
                    // View...
                    ////  https://www.youtube.com/watch?v=elhzkcoBl-A ////// 13:11
                }
            }
            .padding()
        }
        // Fetching...
        .onAppear(perform: {
            data.getQuestions(set: set)
        })
    }
}

