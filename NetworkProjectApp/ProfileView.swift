//
//  ProfileView.swift
//  NetworkProjectApp
//
//  Created by Dusan Orescanin on 22/08/2022.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            Image("userPicture1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 120, height: 120)
                .clipShape(Circle())
                .shadow(color: .black.opacity(0.2), radius: 10, x: 0, y: 5)
            Text("Alicia")
                .font(.title2)
                .fontWeight(.bold)
            Text("Développeuse iOS")
                .font(.subheadline)
                .fontWeight(.light)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
