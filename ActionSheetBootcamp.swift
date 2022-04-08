//
//  ActionSheetBootcamp.swift
//  deneme
//
//  Created by Orkun Toptaş on 8.04.2022.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    
    @State var showActionSheet: Bool = false
    @State var color: Color = Color.white
    
    var body: some View {
        
        ZStack {
            color
                .ignoresSafeArea()
            VStack{
                
                Button(action: {
                    showActionSheet.toggle()
                }, label: {
                    Text("Button")
                        .foregroundColor(.white)
                        .font(.title)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.blue)
                        .cornerRadius(20)
                        .shadow(radius: 10)
                })
            
            .actionSheet(isPresented: $showActionSheet) {
                ActionSheet(title: Text("Error !"),
                            message: Text("You re about to change the background"),
                            buttons: [
                                .cancel(),
                                .destructive(
                                    Text("Don't Change The Background"),
                                    action: { color = Color.white
                                    }),
                                .default(
                                    Text("Change Background"),
                                    action: { color = Color.green
                                    })
                    ])
                }
            }
        }
    }
}
struct ActionSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBootcamp()
    }
}
