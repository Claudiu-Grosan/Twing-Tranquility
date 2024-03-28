//
//  TwingoListDef.swift
//  Twingo Tranquillity Reborn
//
//  Created by Clau on 3/16/24.
//

import Foundation
import SwiftUI

struct TwingoListD{
    var name: String
    var isFav: Bool
    var icon: String
    
    static func GenTwing() -> [TwingoListD] {
        [TwingoListD(name: "Mk.1 ", isFav: true, icon: "mk1" ),
         TwingoListD(name: "Mk.2 ", isFav: false, icon: "mk2" ),
         TwingoListD(name: "Mk.2 facelift", isFav: false, icon: "mk2f" ),
         TwingoListD(name: "Mk.3 ", isFav: true, icon: "mk3" )
        ]
    }
}

