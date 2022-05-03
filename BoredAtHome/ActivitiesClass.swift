//
//  ActivitiesClass.swift
//  BoredAtHome
//
//  Created by Jacob Tamayo on 5/2/22.
//

import Foundation

class ActivitiesClass: ObservableObject {
  @Published private(set) var activities = [RandomActivity]()
  
  func add(activity: RandomActivity) {
    self.activities.append(activity)
  }
  
  func random() -> RandomActivity {
    //If the user has added already then it will randomly select and if they dont then it will default Add New Acitivity
   activities.randomElement() ?? RandomActivity(addRandomActivityName: "Add New Activity")
  }
}
