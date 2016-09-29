//
//  RealmDAO.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 29/09/2016.
//  Copyright © 2016 molmedo. All rights reserved.
//

import RealmSwift

internal protocol RealmDAO
{
    associatedtype RealmObject
}

extension RealmDAO where RealmObject: Object
{
    func makeTransaction(_ closure: (Realm) -> Void) throws
    {
        let realm = try Realm()
        
        try realm.write {
            closure(realm)
        }
    }
    
    func all() throws -> Results<RealmObject>
    {
        let realm = try Realm()
        return realm.objects(RealmObject.self)
    }
    
    func delete(_ object: RealmObject) throws
    {
        try delete([object])
    }
    
    func delete(withPrimaryKey primaryKey: AnyObject) throws
    {
        try makeTransaction {
            guard let objectToDelete = $0.object(ofType: RealmObject.self, forPrimaryKey: primaryKey) else { return }
            $0.delete(objectToDelete)
        }
    }
    
    func delete(_ objects: [RealmObject]) throws
    {
        guard !objects.isEmpty else { return }
        
        try makeTransaction {
            $0.delete(objects)
        }
    }
    
    func add(_ object: RealmObject) throws
    {
        try makeTransaction {
            $0.add(object)
        }
    }
}
