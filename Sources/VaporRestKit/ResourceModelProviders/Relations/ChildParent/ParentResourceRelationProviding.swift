//
//  File.swift
//  
//
//  Created by Sergey Kazakov on 04.05.2020.
//

import Vapor
import Fluent

protocol ParentResourceRelationProviding: ParentResourceModelProviding {

}

extension ParentResourceRelationProviding {
    func idResourcePathFor(endpoint: String) -> [PathComponent] {
        let endpointPath = PathComponent(stringLiteral: endpoint)
        let relationPath = PathComponent(stringLiteral: "relation")
        return [rootIdPathComponent, relationPathComponent, endpointPath, idPathComponent, relationPath]
    }
}