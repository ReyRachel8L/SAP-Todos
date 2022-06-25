//
//  ContentView.swift
//  SAP Todos
//
//  Created by LIM YEE SIN RACHEL stu on 25/6/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var todos = [
        Todo(title: "Watch some Paw Patrol",
             details: "All episodes",
             isCompleted: true),
        Todo(title: "Conduct a giveaway",
             details: "Give Stevens 100,000,000 points",
             isImportant: true),
        Todo(title: "Randomly deduct some points",
             details: "")
    ]
    
    var body: some View {
        VStack {
            NavigationView {
                List(todos) { todo in
                    HStack {
                        Image(systemName: todo.isCompleted ? "checkmark.circle.fill" : "circle")
                        Image(systemName: todo.isImportant ?
                              "star": "")
                        VStack {
                            Text(todo.title)
                                .strikethrough(todo.isCompleted)
                                .foregroundColor(todo.isCompleted ? .green : .red)
                                .cornerRadius(18)
                            Text(todo.details)
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        
                    }
                }
                .navigationTitle("Todos")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
