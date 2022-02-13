//
//  InfoView.swift
//  Theo
//
//  Created by user213083 on 2/11/22.
//

import SwiftUI


struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .frame(width: 358.0, height: 62.0)
            .foregroundColor(.white)
            .overlay(
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(.green)
                    Text(text)
                        .foregroundColor(.black)
                        .font(.system(size: 20)
                                .bold()
                        )
                }
            )
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "holla", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
