//
//  ContentView.swift
//  AdressApp
//
//  Created by Paul Jorda on 02/01/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var qname = false
    @State private var adresse = ""
    @State private var qadresse = false
    @State private var mail = ""
    @State private var qmail = false
    
    var body: some View {
        Spacer()
        VStack {
            Image(systemName: "person.fill")
                .imageScale(.large)
                .foregroundStyle(.tint)
                .font(.largeTitle)
            Text("Contact")
                .font(.title)
                .bold()
        }
        .padding()
        .background(Color.idkbruh, in: RoundedRectangle(cornerRadius: 10))

//        Spacer()
        HStack{
            VStack{
                List {
                    Text("Name:\(name)")
                    Text("Adresse:\(adresse)")
                    Text("Mail:\(mail)")
                    
                }
                .font(.title2)
                
            }
            VStack{
                if !qname {
                    TextField("Enter a Name", text: $name)
                        .padding()
                        .autocorrectionDisabled()
                        .onSubmit {
                            qname = true
                            
                        }
                    
                }
                if !qname {
                    Divider()
                }
                if !qadresse {
                TextField("Enter a Adresse", text: $adresse)
                    .frame(alignment: .top)
                    .padding()
                    .onSubmit {
                        qadresse = true
                    }
            }
                if !qadresse {
                    Divider()
                }
                if !qmail {
                    TextField("Enter a Mail", text: $mail)
                        .frame(alignment: .top)
                        .padding()
                        .onSubmit {
                            qmail = true
                        }
                }
                    Spacer()
            }
                
            }
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.idkbruh)
        
    }
    
}

#Preview {
    ContentView()
}
