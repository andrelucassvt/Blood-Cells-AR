//
//  CellEntity.swift
//  Blood cells AR
//
//  Created by André  Lucas on 23/12/22.
//
import Foundation

struct CellEntity: Identifiable {
    let id = UUID()
    var name: String
    var desc: String
    var photo: String
    var referenceObj: String
    var fonte: String
}
