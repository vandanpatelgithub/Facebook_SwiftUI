//
//  ContentView.swift
//  Facebook_SwiftUI
//
//  Created by Vandan Patel on 2/3/21.
//

import SwiftUI

struct HomePageView: View {
    let facebookBlue = UIColor(red: 23/255.0, green: 120/255.0, blue: 242/255.0, alpha: 1)
    
    @Binding var searchText: String
    let stories = ["ElonMusk", "MSDhoni", "ViratKohli", "NarendraModi", "AmitShah", "TimCook"]
    
    let posts = [
        PostModel(name: "Elon Musk", post: "I am the richest and coolest man in the world. I am CEO of Tesla and SpaceX. I am worth more than $209 Billion", imageName: "ElonMusk"),
        PostModel(name: "Mahendra Singh Dhoni", post: "I was the best captain Indian Cricket Team ever had.", imageName: "MSDhoni"),
        PostModel(name: "Virat Kohli", post: "I am the GOAT of cricket.", imageName: "ViratKohli")
    ]
    
    var body: some View {
        VStack {
            HStack {
                Text("facebook")
                    .font(.system(size: 40, weight: .bold, design: .default))
                    .foregroundColor(Color(facebookBlue))
                Spacer()
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 35, height: 35, alignment: .center)
                    .foregroundColor(Color(.secondaryLabel))
            }
            .padding()
            
            TextField("Serach...", text: $searchText)
                .padding()
                .background(Color(.systemGray5))
                .cornerRadius(10)
                .padding(.horizontal, 15)
            
            ZStack {
                Color(.secondarySystemBackground)
                
                ScrollView(.vertical) {
                    VStack {
                        StoriesView(stories: stories)
                        
                        ForEach(posts, id: \.self) { post in
                            FacebookPost(postModel: post)
                                .padding()
                            Spacer()
                        }
                    }
                }
            }
    
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView(searchText: .constant(""))
    }
}
