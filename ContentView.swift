//
//  ContentView.swift
//  listDemo
//
//  Created by Theis Langelo on 07/02/2023.
//

import SwiftUI

struct ContentView: View {
    
    
    
    @State var items = [
        Item(title:"Note #1")
        
    ]
    
    var body: some View {
        
        VStack{
            let inc:Int = items.count + 1
            Button{
                items.append(Item(title:"Note #\(inc)"))
                
            } label: {
                Text("Add new")
            }
            
            NavigationView{
                List(items){ item in
                    NavigationLink(destination: DetailView(text:"",title:item.title)){
                        Text(item.title)
                    }
                    
                    
                }
            }
        }
    }
}


struct Item:Identifiable{
    var id = UUID()
    let title:String
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
