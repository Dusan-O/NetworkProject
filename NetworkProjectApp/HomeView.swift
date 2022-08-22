//
//  ContentView.swift
//  NetworkProjectApp
//
//  Created by Dusan Orescanin on 22/08/2022.
//

import SwiftUI

struct HomeView: View {
    
    let certificates = [
        Certificate(
            imageName: "swiftUI",
            courseTitle: "Basics of SwiftUI",
            teacherName: "Nikola Tesla",
            completionDate: Date()
    ),
        Certificate(
            imageName: "react",
            courseTitle: "ReactJS web",
            teacherName: "Nina",
            completionDate: Date()
    ),
        Certificate(
            imageName: "kotlin",
            courseTitle: "Basics of Kotlin",
            teacherName: "Novak Djokovic",
            completionDate: Date()
        )
    ]
    var body: some View {
        NavigationView {
            VStack {
                ProfileView(pictureName: "userPicture1", name: "Alice", jobTitle: "Développeuse")
                Divider()
                ScrollView {
                    ForEach(certificates) { certificate in
                        NavigationLink {
                            DetailCertificateview(certificate: certificate)
                        } label: {
                            CertificatesView(certificate: certificate)
                        }
                        CertificatesView(certificate: certificate)
                            .foregroundColor(.primary)
                    }
                }
            }
            .navigationTitle("Profile")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
