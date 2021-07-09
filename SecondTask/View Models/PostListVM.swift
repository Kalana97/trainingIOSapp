//
//  PostListVM.swift
//  SecondTask
//
//  Created by Kalana Rathnayaka on 2021-07-08.
//

import Foundation
import SwiftUI
import Combine

final class PostListVM: ObservableObject {
    
    init() {
        fetchPosts()
    }
    
    var posts = [Post]() {
        didSet {
            didChange.send(self)
        }
    }
    private func fetchPosts() {
        Webservice().getAllPosts {
            self.posts = $0
        }
    }
    let didChange = PassthroughSubject<PostListVM,Never>()

}
