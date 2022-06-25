//
//  Todo.swift
//  SAP Todos
//
//  Created by LIM YEE SIN RACHEL stu on 25/6/22.
//

import Foundation

struct Todo: Identifiable {
    
    let id = UUID()
    
    var title: String
    var isCompleted = false
    
}
