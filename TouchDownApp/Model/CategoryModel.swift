//
//  CategoryModel.swift
//  TouchDownApp
//
//  Created by mahmoud hajar on 12/06/2021.
//

import Foundation

struct Category: Codable, Identifiable {
  let id: Int
  let name: String
  let image: String
}

