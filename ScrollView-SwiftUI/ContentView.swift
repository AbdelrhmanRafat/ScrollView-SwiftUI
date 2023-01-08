//
//  ContentView.swift
//  ScrollView-SwiftUI
//
//  Created by Macbook on 04/09/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //Introducing Scroll View..
        VStack {
            //Adding Header View
            HeaderView()
            //Introducing Carousel UI
            ScrollView(.horizontal, showsIndicators : false)
            {
            HStack{ // Using Hstack to implement Carousel UI
            CardView(image: "swiftui-button", category: "SwiftUI", heading: "Drawing a border with Rounded corners", author: "Simon NG")
            CardView(image: "macos-programming", category: "macOS", heading: "Building a simple Editing App", author: "Gabriel")
                CardView(image: "flutter-app", category: "Flutter", heading: "Building a complex layout with Flutter", author: "Lawrence Tan")
                CardView(image: "natural-language-api", category: "iOS", heading: "What's New in natural language API", author: "Sai Kambampati")
            }
        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct HeaderView : View {
    var body: some View {
        HStack{
            VStack(alignment: .leading){
            Text("Monday, Aug 20")
                .font(.caption)
                .foregroundColor(.secondary)
            Text("Your Reading")
                .foregroundColor(.primary)
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
        }
        .layoutPriority(100)
        Spacer()
        }
        .padding([.top,.horizontal])
        .layoutPriority(-100)
    }
}
struct CardView : View {
    var image : String
    var category : String
    var heading : String
    var author : String
    var body: some View {
        VStack{
        Image(image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            HStack{
            VStack(alignment: .leading) {
                Text(category)
                    .font(.headline)
                    //Primary and Secondary Colors are Set of system Colors By Using this system colors your App can easily support both light and dark modes.
                    .foregroundColor(.secondary)
                Text(heading)
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(.primary)
                    .lineLimit(3)
                Text("Written By " + author.uppercased())
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            //Adjusting Layout Priority
             .layoutPriority(100) // iOS will offer more space to fully render the text views before allocating the space to the spacer.
            Spacer()
            }
            .padding()
        }
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1),lineWidth: 1)
        )
        .padding([.top,.horizontal])
        .frame(width: 300) // Set Width To be fit for Carousel view.

    }
}
