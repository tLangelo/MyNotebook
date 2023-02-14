//
//  DetailView.swift
//  listDemo
//
//  Created by Theis Langelo on 07/02/2023.
//

import SwiftUI

struct DetailView: View {
    @State var text:String = ""
    @State var title:String = ""
    
    @AppStorage("SAVED_TEXT") var savedText = ""
    
    var body: some View {
        
        VStack{
            NavigationView {
                
                TextEditor(text:$text).onChange(of: text){ text in self.savedText = text
                }
                .onAppear {
                    self.text = savedText
                    
                }
                //Text(text).opacity(0).padding(.all,8)
            }.navigationTitle(title).navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(text: "",title:"")
    }
}

