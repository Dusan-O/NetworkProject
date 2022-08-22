//
//  Certificates.swift
//  NetworkProjectApp
//
//  Created by Dusan Orescanin on 22/08/2022.
//

import Foundation

struct Certificate: Identifiable {
    let id = UUID()
    let imageName: String
    let courseTitle: String
    let teacherName: String
    let completionDate: Date
}
