//
//  View Todo.swift
//  TodoListApp
//
//  Created by DDUKK on 21/10/24.
//

import SwiftUI

struct View_Todo: View {
    var todoData: TodoModel
    var body: some View {
        VStack(alignment: HorizontalAlignment.leading){
            Text(todoData.title)
            Divider()
            Text(todoData.description).padding(.vertical)
            Spacer()
        }.padding().padding()
    }
}

struct View_Todo_Previews: PreviewProvider {
    static var previews: some View {
        View_Todo(todoData: TodoModel(title: "Title", description: "Description"))
    }
}
