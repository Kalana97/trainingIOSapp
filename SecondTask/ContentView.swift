//
//  ContentView.swift
//  SecondTask
//
//  Created by Kalana Rathnayaka on 2021-07-08.
//

import SwiftUI

struct ContentView: View {
    @State var model = PostListVM()
    
    var body: some View {
        List(model.posts){ post in
            Text(post.title)
            
        }
        
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

