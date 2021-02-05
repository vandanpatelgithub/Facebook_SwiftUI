//
//  FacebookPost.swift
//  Facebook_SwiftUI
//
//  Created by Vandan Patel on 2/4/21.
//

import SwiftUI

struct FacebookPost: View {
    let postModel: PostModel
    
    var body: some View {
        VStack {
            HStack {
                Image(postModel.imageName)
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(25.0)
                    .clipped()
                
                VStack(alignment: .leading) {
                    Text(postModel.name)
                        .foregroundColor(.blue)
                        .font(.system(size: 18, weight: .semibold, design: .default))
                    Text("10 Minutes Ago")
                        .foregroundColor(.secondary)
                }
                Spacer()
            }
            
            Spacer()
            HStack {
                Text(postModel.post)
                    .font(.system(size: 18, weight: Font.Weight.light, design: .default))
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            
            Spacer()
            
            HStack {
                LikeCommentShareView()
            }
            .padding()
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(7.0)
    }
}

struct FacebookPost_Previews: PreviewProvider {
    static var previews: some View {
        FacebookPost(postModel: PostModel(name: "name", post: "post", imageName: ""))
    }
}
