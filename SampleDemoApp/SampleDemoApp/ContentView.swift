//
//  ContentView.swift
//  SampleDemoApp
//
//  Created by ArunSha on 01/09/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center) {
            
            Image("Elan Musk")
               .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(90)
                .padding(.all)
//                .clipShape(Circle())
            
            Text("First Line")
                .font(.title)
                .foregroundColor(.red)
            Text("Second")
                .font(.largeTitle)
                .foregroundColor(.green)
            Text("3rd")
            HStack(){
                Text("First Line")
                Text("Second")
                    
            }.padding(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
