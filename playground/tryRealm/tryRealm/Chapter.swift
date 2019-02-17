//
//  Chapter.swift
//  tryRealm
//
//  Created by aa372953 on 2019/02/17.
//  Copyright © 2019 snymyn. All rights reserved.
//
import UIKit
import RealmSwift

class Chapter: Object {
    @objc dynamic var id: Int = 0
    //    @objc dynamic var name: String = ""
    //    @objc dynamic var email: String = ""
    //    @objc dynamic let endDate: Date? = nil
    @objc dynamic var title: String = ""
    let sections = List<Section>()
}

class Section: Object {
//    @objc dynamic var id:
//    @objc dynamic var title: String = ""
//    @objc dynamic var body: String = ""
//    @objc dynamic var chapter: Capter?
}


let chapter1 = Chapter()
chapter1.id = 1
chapter1.title = "this is my first realm code"

let realm = try! Realm()
try! realm.write {
    realm.add(chapter1)
}
