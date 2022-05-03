//
//  AddActivityView.swift
//  BoredAtHome
//
//  Created by Jacob Tamayo on 5/2/22.
//

import SwiftUI

struct AddActivityView: View {
  @ObservedObject var activitiesStore: ActivitiesClass
  @State private var name = ""
  var body: some View {
    NavigationView {
      Form {
        Section {
          TextField("Add Activity", text: $name)
          //List of all added activites show up in a list underneath here
        }
        Section {
          ForEach(activitiesStore.activities, id: \.addRandomActivityName) { activites in
            Text("\(activites.addRandomActivityName)")
              .keyboardType(.default)
          }
        }
      }
      .navigationTitle("Activities")
      .toolbar {
        Button("Save") {
          activitiesStore.add(activity: RandomActivity(addRandomActivityName: name))
          self.name = ""
        }
        //Cannot save unless user enters in a activity
        .disabled(name.isEmpty)
      }
    }
  }
}

struct AddActivityView_Previews: PreviewProvider {
    static var previews: some View {
      AddActivityView(activitiesStore: ActivitiesClass())
    }
}
