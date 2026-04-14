//
//  File.swift
//  
//
//  Created by Michael Craun on 12/12/20.
//

import Foundation
import Vapor

struct UserController: RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        
        let users = routes.grouped("users")
        
        users.get(use: index)
        users.post(use: create)
        users.group(":id") { user in
            user.get(use: show)
        }
    }
    
    func create(req: Request) throws -> String {
        guard let id = req.parameters.get("id") else { throw Abort(.badRequest) }
        return "create \(id)"
    }
    
    func index(req: Request) throws -> String {
        return "INDEX"
    }
    
    func show(req: Request) throws -> String {
        return "SHOW"
    }
}
