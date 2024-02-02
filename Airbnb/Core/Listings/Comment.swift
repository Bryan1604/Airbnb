//
//  Comment.swift
//  Airbnb
//
//  Created by Luong Vu on 2/1/24.
//

import SwiftUI

struct Comment: View {
    @State private var isLiked = false
    @State private var numLiked = 1
    @State private var isReplying = false
    @State private var commentText = ""
    @State private var comments: [String] = []
    var body: some View {
        HStack(alignment: .top) {
            Image("male-profile-photo")
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            VStack(alignment: .leading) {
                Text("This is my comments This is my comments This is my comments This is my comments This is my comments This is my comments This is my comments This is my comments")
                    .font(.system(size: 14))
                HStack {
                    Button(action: {
                        self.isLiked.toggle()
                        if self.isLiked {
                            numLiked += 1
                        } else {
                            numLiked -= 1
                        }
                    }) {
                        Image(systemName: isLiked ? "heart.fill" : "heart" )
                            .foregroundColor(.pink)
                    }
                        
                    Text("\(numLiked)")
                        .font(.footnote)
                        .foregroundStyle(.pink)
                    
                    Button(action: {
                        self.isReplying.toggle()
                    }) {
                        Image(systemName: "bubble.left" )
                            .foregroundColor(.blue)
                        Text("\(comments.count)").font(.footnote)
                    }
                }
                
                if self.isReplying {
                    HStack {
                        TextField("Nhập bình luận của bạn", text: $commentText)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .font(.footnote)
                        Button(action: {
                            self.addComment()
                        }) {
                            Image(systemName: "paperplane")
                                .foregroundColor(.blue)
                        }
                    }
                    .padding()
                }
            }
            .animation(.snappy)
        }
        .frame(width: .infinity)
    }
    
    func addComment() {
        if !commentText.isEmpty {
            comments.append(commentText)
            commentText = ""
            isReplying.toggle()
        }
    }
}

#Preview {
    Comment()
}
