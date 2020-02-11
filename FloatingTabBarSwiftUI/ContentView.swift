//
//  ContentView.swift
//  FloatingTabBarSwiftUI
//
//  Created by Nelson Gonzalez on 2/11/20.
//  Copyright © 2020 Nelson Gonzalez. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selected = 0
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            VStack {
                if self.selected == 0 {
                    
                        GeometryReader { _ in
                            Text("Home")
                        }
                    
                } else if self.selected == 1 {
                    GeometryReader { _ in
                        Text("Wishlist")
                    }
                    
                } else {
                    GeometryReader { _ in
                        Text("Cart")
                    }
                }
            }.background(Color("Color")).edgesIgnoringSafeArea(.all)
            
            FloatingTabBarView(selected: self.$selected)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
