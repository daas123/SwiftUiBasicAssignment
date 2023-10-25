//
//  UserData Model.swift
//  SwiftUiBasicAssignment
//
//  Created by Neosoft on 23/10/23.
//

import Foundation
struct UserDataModel : Identifiable{
    var id = UUID()
    let taskName : String
    let taskTime : String
    let taskGotComplited : Bool
}

let demoData = [
    UserDataModel(taskName: "Task1 hi there my name is saad and i am form mumbai", taskTime: "23 Oct 2023", taskGotComplited: false),
    UserDataModel(taskName: "Task2", taskTime: "22 Oct 2023", taskGotComplited: false),
    UserDataModel(taskName: "Task3", taskTime: "21 Oct 2023", taskGotComplited: false),
    UserDataModel(taskName: "Task4", taskTime: "20 Oct 2023", taskGotComplited: true),
    UserDataModel(taskName: "Task5", taskTime: "19 Oct 2023", taskGotComplited: true),
    UserDataModel(taskName: "Task1", taskTime: "23 Oct 2023", taskGotComplited: false),
    UserDataModel(taskName: "Task2", taskTime: "22 Oct 2023", taskGotComplited: false),
    UserDataModel(taskName: "Task3", taskTime: "21 Oct 2023", taskGotComplited: false),
    UserDataModel(taskName: "Task4", taskTime: "20 Oct 2023", taskGotComplited: true),
    UserDataModel(taskName: "Task5", taskTime: "19 Oct 2023", taskGotComplited: true),
]
