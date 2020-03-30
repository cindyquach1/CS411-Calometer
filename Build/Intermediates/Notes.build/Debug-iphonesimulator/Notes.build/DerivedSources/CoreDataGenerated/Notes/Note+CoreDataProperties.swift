//
//  Note+CoreDataProperties.swift
//  
//
//  Created by Victoria Tran on 3/30/20.
//
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension Note {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Note> {
        return NSFetchRequest<Note>(entityName: "Note")
    }

    @NSManaged public var noteDescription: String?
    @NSManaged public var noteImage: Data?
    @NSManaged public var noteName: String?

}
