//
//  ToDoListViewModel.swift
//  ToDoListApp
//
//  Created by Şerif Botan Kapcuk on 11.07.2025.
//
import FirebaseFirestore
import Firebase
import Foundation

final class ToDoListViewModel {
     
    var firestoreService: FirebaseServicing
    
    init(firestoreService: FirebaseServicing  = FirestoreService()) {
        self.firestoreService = firestoreService
    }
    
    func fetchTodos(){
        firestoreService.fetchTodos {result in
            switch result {
            case .success(let todos):
                break
            case .failure(let error):
                break
            }
        }
    }
    
}
