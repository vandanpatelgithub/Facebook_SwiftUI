//
//  StoriesView.swift
//  Facebook_SwiftUI
//
//  Created by Vandan Patel on 2/4/21.
//

import SwiftUI

struct StoriesView: View {
    let stories: [String]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
                ForEach(stories, id: \.self) { story in
                    Image(story)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 140, height: 200, alignment: .center)
                        .clipped()
                        .background(Color.red)
                        .cornerRadius(7.0)
                }
            }
            .padding()
        }
    }
}

struct StoriesView_Previews: PreviewProvider {
    static var previews: some View {
        StoriesView(stories: [])
    }
}
