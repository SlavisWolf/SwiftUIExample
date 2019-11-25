//
//  StatsRow.swift
//  EjemploSwiftUI
//
//  Created by Antonio Jesús on 25/11/2019.
//  Copyright © 2019 Antonio Jesús. All rights reserved.
//

import SwiftUI

struct StatsRow: View {
    var statKey : String
    var statValue: String
    
    var body: some View {
        HStack(alignment: .center, spacing: 12.0) {
            Text(statKey + ":")
                .font(.system(size:21))
                .fontWeight(.semibold)
                .padding(.leading, 40)
            Text(statValue)
                .font(.system(size: 21))
                    .fontWeight(.ultraLight)
                .padding(.trailing, 40)
            Spacer()
        }
    }
}

struct StatsRow_Previews: PreviewProvider {
    static var previews: some View {
        StatsRow(statKey: "Edad", statValue: "34" )
    }
}
