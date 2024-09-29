//
//  ContentView.swift
//  sunhacks
//
//  Created by Zyan Bezzat on 9/28/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            WorkoutListView()
                .navigationTitle("Workouts")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


#Preview {
    ContentView()
}
