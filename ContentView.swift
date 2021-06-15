//
//  ContentView.swift
//  AddNewItemSheet
//
//  Created by Daniel Watson on 15/06/2021.
//

import SwiftUI

class ContentViewModel: ObservableObject {
    
    @Published var showAddNewIncomeSheet = false
}

struct ContentView: View {
    
    @StateObject var VM = ContentViewModel()
    
    var body: some View {
        NavigationView {
            List {
                Text("Hello, world!")
                    .padding()
                
            }
            .navigationBarItems(
                leading: Text("Items"),
                trailing: Image(systemName: "plus.circle")
                    .onTapGesture {
                        VM.showAddNewIncomeSheet = true
                    })
        }
    }
}

struct AddNewIncomeSheet: View {
    var body: some View {
        Text("Im a new Income Sheet")
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
