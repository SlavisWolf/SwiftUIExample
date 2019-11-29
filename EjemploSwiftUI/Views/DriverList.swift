//
//  DriverList.swift
//  EjemploSwiftUI
//
//  Created by Antonio Jesús on 28/11/2019.
//  Copyright © 2019 Antonio Jesús. All rights reserved.
//

import SwiftUI

struct DriverList: View {
    
    var listDrivers : Array<Driver>
    var body: some View {
        NavigationView {
            List(listDrivers) { driver in
                NavigationLink(destination: DriverDetail(driver: driver) ) {
                    DriverRow(driver: driver)
                }
            }.navigationBarTitle(Text("Formula 1 2019"),    displayMode: .large)
        }
    }
}

struct DriverList_Previews: PreviewProvider {
    static var previews: some View {
        DriverList(listDrivers: drivers)
    }
}
