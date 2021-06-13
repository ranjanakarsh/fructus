//
//  SettingsView.swift
//  Fructus
//
//  Created by Ranjan Akarsh on 10/06/21.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/) {
                VStack(spacing: 20) {
                    // MARK: SECTION 1
                    GroupBox(
                        label: SettingsLabelView(labelName: "Fructus", labelImage: "info.circle")) {
                        Divider().padding(.vertical, 4)
                            
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholestrol. Fruits are sources of many essential nutrients, including potassium, dietary fibre, vitamin, and much more.")
                                .font(.footnote)
                        }
                    }
                    
                    // MARK: SECTION 2
                    GroupBox(label: SettingsLabelView(labelName: "Customization", labelImage: "paintbrush")
                    ) {
                        Divider().padding(.vertical, 4)
                        Text("If you wish you can restart the application by toggling the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }
                    
                    // MARK: SECTION 3
                    GroupBox(label: SettingsLabelView(labelName: "Application", labelImage: "apps.iphone")
                    ) {
                        SettingsRowView(name: "Developer", content: "John / Jane")
                        SettingsRowView(name: "Designer", content: "Ranjan Akarsh")
                        SettingsRowView(name: "Compatibility", content: "iOS 14")
                        SettingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                        SettingsRowView(name: "Twitter", linkLabel: "@RanjanAkarsh", linkDestination: "twitter.com/ranjanakarsh")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                    }//: GROUP
                    
                } //: VSTACK
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing: Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "xmark")
                })
                .padding()
            } //: SCROLL
        } //: NAVIGATION
    }
}

// MARK: - PREVIEW

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone xR")
    }
}
