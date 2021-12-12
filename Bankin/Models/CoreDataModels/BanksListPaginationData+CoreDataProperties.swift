//
//  BanksListPaginationData+CoreDataProperties.swift
//  Bankin
//
//  Created by Karim BEN HAMMOUDA on 12/12/2021.
//
//

import Foundation
import CoreData


extension BanksListPaginationData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<BanksListPaginationData> {
        return NSFetchRequest<BanksListPaginationData>(entityName: "BanksListPaginationData")
    }

    @NSManaged public var previous_uri: String?
    @NSManaged public var next_uri: String?

}

extension BanksListPaginationData : Identifiable {

}
