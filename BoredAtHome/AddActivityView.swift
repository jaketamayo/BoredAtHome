//
//  AddActivityView.swift
//  BoredAtHome
//
//  Created by Jacob Tamayo on 5/2/22.
//

import SwiftUI

struct AddActivityView: View {
  @State private var name = ""
  var body: some View {
    NavigationView {
      Form {
        Section(header: Text("Add Activity")) {
          TextField("Add Activity", text: $name)
        }
      }
      .toolbar {
        Button("Save") {
         //Add activity to list
        }
      }
    }
  }
}

struct AddActivityView_Previews: PreviewProvider {
    static var previews: some View {
        AddActivityView()
    }
}
