//
//  AddTodo.swift
//  TodoListApp
//
//  Created by DDUKK on 21/10/24.
//

import SwiftUI

struct AddTodo: View {
    @Environment(\.presentationMode) var presentationMode
    @State var title: String = ""
    @State var description: String = ""
    @EnvironmentObject var todo:TodoViewModel
    var body: some View {
        VStack{
            TextField("Title", text: $title).padding().padding()
            Divider()
            ZStack(alignment: .topLeading) {
                // TextEditor
                TextEditor(text: $description)
                    .padding()
                
                // Placeholder text
                if description.isEmpty {
                    Text("Enter your description here...")
                        .foregroundColor(.gray)
                        .padding(25)
                }                    }
            .padding()
            Button {
                todo.todoList.append(TodoModel(title: title, description: description))
                presentationMode.wrappedValue.dismiss()
                
            } label: {
                Text("Save")
            }
            
        }
    }
}

struct AddTodo_Previews: PreviewProvider {
    static var previews: some View {
        AddTodo()
    }
}
