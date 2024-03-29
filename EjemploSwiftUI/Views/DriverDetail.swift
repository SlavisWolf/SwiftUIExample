//
//  DriverDetail.swift
//  EjemploSwiftUI
//
//  Created by Antonio Jesús on 22/11/2019.
//  Copyright © 2019 Antonio Jesús. All rights reserved.
//

import SwiftUI

struct DriverDetail: View {
    
    var driver : Driver
    var body: some View {
        VStack {
            Image(driver.team.imageName)
                .resizable()
                .frame(height:230)
            
            Image(driver.imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 200)
                .clipShape(Circle() )
                .background(Circle().foregroundColor(.purple) )
                .overlay(Circle().stroke(driver.team.color,     lineWidth: 4) )
                .shadow(radius: 8)
                .offset(x: 0, y: -80)
                .padding(.bottom, -55)
            
            Text(driver.name)
                .font(.system(size: 35))
                .fontWeight(.bold)
                .minimumScaleFactor(0.5)
            
            VStack(spacing: 6.0) {
                StatsRow(statKey: "Edad", statValue: String(driver.age) )
                StatsRow(statKey: "Número", statValue: String(driver.number) )
                StatsRow(statKey: "Lugar de nacimiento", statValue: driver.birthPlace)
            }.padding(.top, 15)
            Spacer()
        }.edgesIgnoringSafeArea(.top)
        
    }
}
struct DriverDetail_Previews: PreviewProvider {
    static var previews: some View {
        
        
        Group {
            
            DriverDetail(driver: drivers[5])
            
            DriverDetail(driver: drivers[7]).previewDevice("iPhone 8").previewDisplayName("iPhone 8")
        }
    }
}
