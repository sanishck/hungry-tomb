//
//  Category.swift
//  Hungry Tomb
//
//  Created by Sanish C.K. on 01/03/2023.
//

import SwiftUI

/**
     "posDisplayCategoryID": 12,
     "item": "item 1",
     "description": "description 1",
     "taxable": false,
     "imageUrl": "https://loremflickr.com/640/480/food",
     "price": 7,
     "id": "1"
 */

struct Category: Codable, Identifiable {
    var posDisplayCategoryID: Int
    var item: String
    var description: String
    var taxable: Bool
    var imageUrl: String
    var price: Int
    var id: Int
}
