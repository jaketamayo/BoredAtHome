//
//  ContentView.swift
//  BoredAtHome
//
//  Created by Jacob Tamayo on 4/30/22.
//

import SwiftUI

//Bored at home is a simple app that gives you something at random to do at home
//Click the random button to cycle through activities to do at home
//Click the add button to add your own things to do
//After adding, random button will update with the new items

struct ContentView: View {
  @StateObject private var activityStore = ActivitiesClass()
  @State private var acvitivtyName = ""
  @State private var addView = false
  @State private var randomActivity: RandomActivity?
  

  
    var body: some View {
      NavigationView {
        VStack {
          Spacer()
          Button {
            //Randomly cycles through added activities
            randomActivity = activityStore.random()
          } label: {
            if let randomActivity = randomActivity {
              Text(randomActivity.addRandomActivityName)
            } else {
              Text("Activity")
            }
          } .font(.title)
          Spacer()
          Button {
            addView.toggle()
          } label: {
            Image(systemName: "plus.circle.fill")
              .font(.title)
            //Want to make the button larger but dont know how
          }
          .sheet(isPresented: $addView) {
            AddActivityView(activitiesStore: activityStore)
          }
          Spacer()
        }
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
