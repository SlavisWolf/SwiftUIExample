//
//  DriverRow.swift
//  EjemploSwiftUI
//
//  Created by Antonio Jesús on 25/11/2019.
//  Copyright © 2019 Antonio Jesús. All rights reserved.
//

import SwiftUI

struct DriverRow: View {
    
    var driver: Driver
    
    var body: some View {
        
        HStack {
            Image(driver.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 80.0, height: 80.0)
                .clipShape(Circle())
            .overlay(Circle().stroke(driver.team.color, lineWidth: 3))
            
            Spacer()
            
            Text(driver.name)
                .font(.system(size: 24.0, weight: .semibold, design: .default))
            Spacer()
        }.padding(.horizontal, 15.0)
    }
}

struct DriverRow_Previews: PreviewProvider {
    static var previews: some View {
        
        DriverRow(driver: drivers[0]).previewLayout(.fixed(width: 450, height: 100))
        
    }
}
