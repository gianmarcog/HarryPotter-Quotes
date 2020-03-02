//
//  File.swift
//  HarryPotter-Quotes
//
//  Created by Gianmarco Giretti on 02.03.20.
//  Copyright © 2020 Gianmarco Giretti. All rights reserved.
//

import Foundation
import SwiftUI

struct Quote : Hashable, Decodable {
    var quote: String
    var name: String
}
