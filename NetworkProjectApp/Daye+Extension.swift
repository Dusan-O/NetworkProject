//
//  Daye+Extension.swift
//  NetworkProjectApp
//
//  Created by Dusan Orescanin on 22/08/2022.
//

import Foundation

extension Date {
    func formattedString() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM"
        return dateFormatter.string(from: self)
    }
}
