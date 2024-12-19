//
//  TodoViewModel.swift
//  TodoListApp
//
//  Created by DDUKK on 21/10/24.
//

import Foundation
import SwiftUI

class TodoViewModel: ObservableObject{
    @Published var todoList:[TodoModel] = []
    
    func addtodos(){
        todoList.append(TodoModel(title: "Grocery", description: "List to purchase: 1.Mangos, 2.Grapes, 3.Carrot"))
        todoList.append(TodoModel(title: "Turf", description: "1. Midhun-60, 2. Kiran-60"))
    }
    
    func deletetodos(index: IndexSet){
        todoList.remove(atOffsets: index)
    }
}
