//
//  TodoDetailView.swift
//  SAP Todos
//
//  Created by LIM YEE SIN RACHEL stu on 25/6/22.
//

import SwiftUI

struct TodoDetailView: View {
    
    @State var todo = Todo(title: "Water the cat", details: "")
    
    var body: some View {
        VStack {
            TextField("Todo title", text: $todo.title)
                .multilineTextAlignment(.center)
                .textFieldStyle(.roundedBorder)
                .padding()
            Button {
                withAnimation() {
                    todo.isCompleted.toggle()
                }
            } label: {
                Text ("Mark as \(todo.isCompleted ? "incomplete" : "completed")")
            }
        }
    }
}

struct TodoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TodoDetailView()
    }
}
