//
//  CertificatesView.swift
//  NetworkProjectApp
//
//  Created by Dusan Orescanin on 22/08/2022.
//

import SwiftUI

struct CertificatesView: View {
    
    let certificate: Certificate
    
    var body: some View {
        HStack(spacing: 16) {
            ZStack {
                Circle()
                    .foregroundColor(.white)
                    .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 5)
                Image(certificate.imageName)
                    .resizable()
                    .padding()
            }
                .frame(width: 80, height: 80)
            VStack(alignment: .leading, spacing: 8) {
                Text(certificate.courseTitle)
                    .font(.title3)
                    .fontWeight(.semibold)
                Text("by \(certificate.teacherName)")
                    .fontWeight(.light)
            }
            Spacer()
            Text(certificate.completionDate.formattedString())
                .font(.callout)
                .foregroundColor(.gray)
        }
        .padding()
        .frame(minWidth: .infinity)
    }
}

struct CertificatesView_Previews: PreviewProvider {
    static var previews: some View {
        CertificatesView(certificate: Certificate.preview)
            .previewLayout(.sizeThatFits)
    }
}
