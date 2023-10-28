//  ContentView.swift
//  BullsEyeSwiftUI
//  Created by Moises Abraham Vazquez Perez on 28/10/23.

import SwiftUI

struct ContentView: View {
    
    @State private var image: Image?
    
    
    var body: some View {
        VStack {
            image?
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .edgesIgnoringSafeArea(.all)
        }
        .onAppear(perform: loadImage)
        .padding()
    }
    
    func loadImage(){
        image = Image("Background")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13 mini")
    }
}
