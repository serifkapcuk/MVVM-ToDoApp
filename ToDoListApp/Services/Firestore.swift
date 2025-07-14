//
//  Firestore.swift
//  ToDoListApp
//
//  Created by Şerif Botan Kapcuk on 14.07.2025.
//

import FirebaseFirestore

protocol FirebaseServicing {
    func fatchTodos (completion: @escaping (Result<[ToDo],Error>) -> Void)
}


class FireBaseStore: FirebaseServicing {
    
    let db = Firestore.firestore()
    let collection = "toDos"
    
    func fatchTodos (completion: @escaping (Result<[ToDo],Error>) -> Void){
        db.collection(collection).getDocuments { snapshot, erorr in
            if let error = erorr {
                completion(.failure(error))
            }
            else {
                let todos = snapshot?.documents.compactMap(doc -> Todo?) in
                try? doc.Data(as: Todo.self)
                    
                }?? []
            completion(.success(todos))
            }
        }
    }
    
}
