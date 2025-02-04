//
//  ContentView.swift
//  LearnFirebase
//
//  Created by shashwat singh on 01/02/25.
//
import SwiftUI
import Foundation
import Firebase
struct ContentView: View {
    @State var Email: String = ""
    @State var password: String = ""
//    @State var auth: Bool = false
    var body: some View {
        NavigationView{
            VStack{
                Spacer()
                Text("Logo")
                    .font(.system(size: 60))
                    .fontWeight(.bold)
                    .foregroundStyle(.orange)
                Spacer()
                NavigationLink {
                        authPage()
                    
                } label: {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.blue)
                        .frame(width: 200,height: 60)
                        .overlay{
                            Text("Continue")
                                .bold()
                                .foregroundStyle(.white)
                                .font(.system(size: 25))
                                    }
                }

                Spacer()
            }
        }
        
    }
}

#Preview {
    ContentView()
}

