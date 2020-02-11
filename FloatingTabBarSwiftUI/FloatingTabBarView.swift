//
//  FloatingTabBarView.swift
//  FloatingTabBarSwiftUI
//
//  Created by Nelson Gonzalez on 2/11/20.
//  Copyright © 2020 Nelson Gonzalez. All rights reserved.
//

import SwiftUI

struct FloatingTabBarView: View {
    @Binding var selected: Int
    @State private var expand = false
    
    var body: some View {
        
        HStack {
            Spacer(minLength: 0)
       
        HStack {
            
            if !self.expand {
                Button(action: {
                    self.expand.toggle()
                }) {
                    Image(systemName: "arrow.left").foregroundColor(.black).padding()
                }
            } else {
                Button(action: {
                               self.selected = 0
                           }) {
                               Image(systemName: "house").foregroundColor(self.selected == 0 ? .black : .gray).padding(.horizontal)
                           }
                           
                           Spacer(minLength: 15)
                           
                           Button(action: {
                               self.selected = 1
                           }) {
                               Image(systemName: "star").foregroundColor(self.selected == 1 ? .black : .gray).padding(.horizontal)
                           }
                           
                           Spacer(minLength: 15)
                           
                           Button(action: {
                               self.selected = 2
                           }) {
                               Image(systemName: "cart").foregroundColor(self.selected == 2 ? .black : .gray).padding(.horizontal)
                           }
            }
            
           
        }.padding(.vertical, self.expand ? 20 : 8).padding(.horizontal, self.expand ? 35 : 8).background(Color.white).clipShape(Capsule()).padding().onLongPressGesture {
            self.expand.toggle()
        }.animation(.interactiveSpring(response: 0.6, dampingFraction: 0.6, blendDuration: 0.6))
            
        }
    }
}

struct FloatingTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        FloatingTabBarView(selected: .constant(0))
    }
}
