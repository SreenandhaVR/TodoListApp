//
//  ContentView.swift
//  TodoListApp
//
//  Created by DDUKK on 21/10/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var todo:TodoViewModel = TodoViewModel()
    var body: some View {
        NavigationView{
            VStack{
                List{
                    ForEach(todo.todoList){
                        todoItem in
                        NavigationLink {
                            View_Todo(todoData: todoItem)
                        } label: {
                            HStack{
                                Text(todoItem.title)
                            }
                        }
                    }.onDelete(perform: todo.deletetodos)
                }
            }.navigationTitle("ToDo List").navigationBarItems(trailing: NavigationLink(destination: {
                AddTodo()
            }, label: {
                Image(systemName: "plus")
            }))
        }.onAppear(perform: todo.addtodos)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
