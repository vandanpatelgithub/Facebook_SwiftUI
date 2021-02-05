//
//  LikeCommentShareView.swift
//  Facebook_SwiftUI
//
//  Created by Vandan Patel on 2/5/21.
//

import SwiftUI

struct LikeCommentShareView: View {
    @State private var isLiked = false
    
    var body: some View {
        Button(action: {
            isLiked.toggle()
        }, label: {
            Image(systemName: "hand.thumbsup")
            Text(isLiked ? "Liked" : "Like")
                .font(.system(size: 18, weight: .bold, design: .default))
        })
        .accentColor(isLiked ? Color(.systemBlue) : Color(UIColor.darkGray))
        
        Spacer()
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            Image(systemName: "bubble.left")
            Text("Comment")
                .font(.system(size: 18, weight: .bold, design: .default))
        })
        .accentColor(Color(UIColor.darkGray))
        Spacer()
        
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            Image(systemName: "arrowshape.turn.up.right")
            Text("Share")
                .font(.system(size: 18, weight: .bold, design: .default))
        })
        .accentColor(Color(UIColor.darkGray))
    }
}

struct LikeCommentShareView_Previews: PreviewProvider {
    static var previews: some View {
        LikeCommentShareView()
    }
}
