//
//  ContentView.swift
//  ScrollView-SwiftUI
//
//  Created by Macbook on 04/09/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
        Image("swiftui-button")
            .resizable()
            .aspectRatio(contentMode: .fit)
            HStack{
            VStack(alignment: .leading) {
                Text("SwiftUI")
                    .font(.headline)
                    .foregroundColor(.secondary)
                Text("Drawing a border with Rounded corners")
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(.primary)
                    .lineLimit(3)
                Text("Written by Simon NG".uppercased())
                    .font(.caption)
                    .foregroundColor(.secondary)
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
