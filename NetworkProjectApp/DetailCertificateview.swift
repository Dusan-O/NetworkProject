//
//  DetailCertificateview.swift
//  NetworkProjectApp
//
//  Created by Dusan Orescanin on 22/08/2022.
//

import SwiftUI

struct DetailCertificateview: View {
    
    let certificate: Certificate
    
    var body: some View {
        VStack(spacing: 16) {
            Image(certificate.imageName)
            Text(certificate.courseTitle)
                .font(.title)
                .fontWeight(.bold)
            Text(certificate.teacherName)
                .font(.title3)
                .fontWeight(.light)
        }
    }
}

struct DetailCertificateview_Previews: PreviewProvider {
    static var previews: some View {
        DetailCertificateview(certificate: Certificate.preview)
    }
}
