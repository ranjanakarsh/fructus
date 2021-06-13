//
//  LabelView.swift
//  Fructus
//
//  Created by Ranjan Akarsh on 10/06/21.
//

import SwiftUI

struct SettingsLabelView: View {
    // MARK: - PROPERTIES
    var labelName: String
    var labelImage: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Text(self.labelName.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: self.labelImage)
        }
    }
}

// MARK: - PREVIEW

struct LabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelName: "Fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
