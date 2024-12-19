//
//  TodoModel.swift
//  TodoListApp
//
//  Created by DDUKK on 21/10/24.
//

import Foundation

struct TodoModel: Identifiable{
    var id: String = UUID().uuidString
    var title: String
    var description: String
}
