//
//  BanksFormData+CoreDataProperties.swift
//  Bankin
//
//  Created by Karim BEN HAMMOUDA on 10/12/2021.
//
//

import Foundation
import CoreData


extension BanksFormData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<BanksFormData> {
        return NSFetchRequest<BanksFormData>(entityName: "BanksFormData")
    }

    @NSManaged public var label: String?
    @NSManaged public var type: String?
    @NSManaged public var isNum: String?
    @NSManaged public var maxLength: Int64
    @NSManaged public var banks: BanksData?

}

extension BanksFormData : Identifiable {

}
