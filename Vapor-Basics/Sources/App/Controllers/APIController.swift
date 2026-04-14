//
//  File.swift
//  
//
//  Created by Michael Craun on 12/12/20.
//

import Foundation
import Vapor

struct User: Content {
    var name: String
    var age: Int
    var address: Address
}

struct Address: Content {
    var street: String
    var state: String
    var zipCode: String
}

struct APIController: RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        let api = routes.grouped("api")
        
        api.get("users", use: getUsers)
        api.post("users", use: createUser)
    }
    
//    private func getUsers(req: Request) throws -> Response {
//        let users: [[String : String]] = [
//            [ "name" : "John" ],
//            [ "name" : "Mary" ]]
//        let data = try JSONSerialization.data(withJSONObject: users, options: .prettyPrinted)
//        return Response(status: .ok, body: Response.Body(data: data))
//    }
    
    private func getUsers(req: Request) throws -> [User] {
        let address = Address(street: "1200 Richmond Drive", state: "TX", zipCode: "45678")
        let user = User(name: "John", age: 32, address: address)
        return [user]
    }
    
    private func createUser(req: Request) throws -> HTTPStatus {
        let user = try req.content.decode(User.self)
        print(user.name)
        return .ok
        
    }
}
