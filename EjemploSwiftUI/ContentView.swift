//
//  ContentView.swift
//  EjemploSwiftUI
//
//  Created by Antonio Jesús on 22/11/2019.
//  Copyright © 2019 Antonio Jesús. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("mercedes")
        .resizable()
            .frame(/*width:100,*/ height:200)
        //.padding(.horizontal, 50.0)
    }
}
#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
