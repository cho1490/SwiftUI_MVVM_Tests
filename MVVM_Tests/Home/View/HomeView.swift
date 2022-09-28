//
//  ContentView.swift
//  MVVM_Tests
//
//  Created by 조상현 on 2022/09/17.
//

import Foundation
import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = HomeViewModel()    
    
    var body: some View {
        VStack {
            TextField("User Name", text: $viewModel.userName)
            
            Spacer()
            
            Button("Get Data") {
                viewModel.getData()
            }
        }
        .padding()
    }
}