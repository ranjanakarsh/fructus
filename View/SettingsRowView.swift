//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Ranjan Akarsh on 10/06/21.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - PROPERTIES
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            
            HStack {
                Text(self.name).foregroundColor(Color.gray)

                Spacer()
                
                if (self.content != nil) {
                    Text(self.content!)
                } else if (self.linkLabel != nil && linkDestination != nil) {
                    Link(self.linkLabel!, destination: URL(string: "https://\(self.linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

// MARK: - PREVIEW
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer", content: "John / Jane")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            
            SettingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
