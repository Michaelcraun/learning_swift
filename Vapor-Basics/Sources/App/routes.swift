import Vapor

func routes(_ app: Application) throws {
    
    try app.register(collection: UserController())
    try app.register(collection: APIController())
    
    
    
//    // http://127.0.0.1:8080
//    app.get { req in
//        return "It works!"
//    }
//    
//    // http://127.0.0.1:8080/hello
//    app.get("hello") { req -> String in
//        return "Hello, world!"
//    }
//    
//    // http://127.0.0.1:8080/movies/genre/{ genre }
//    app.get("movies", "genre", ":genre") { (req) -> String in
//        guard let genre = req.parameters.get("genre") else { throw Abort(.badRequest) }
//        return "/movies/genre/\(genre)"
//    }
//    
//    // Anything Route
//    // /foo/bar/baz
//    // /foo/abc/baz
//    // /foo/def/baz
//    app.get("foo", "*", "baz") { (req) -> String in
//        return "/foo/*/baz"
//    }
//    
//    
//    // Catchall Route
//    // /foo/bar
//    // /foo/bar/baz
//    app.get("foo", "**") { (req) -> String in
//        return "/foo/**"
//    }
//    
//    // Query strings
//    // /search?keyword=toys&page=12
//    app.get("search") { (req) -> String in
//        guard let keyword = req.query["keyword"] as String?,
//              let page = req.query["page"] as Int? else { throw Abort(.badRequest) }
//        return "Searching for \(keyword) on page \(page)"
//    }
//    
//    // Route groups
//    // /users/12
//    // /users
//    // POST users
//    let users = app.grouped("users")
//    
//    // GET /users
//    users.get { (req) -> String in
//        return "/users"
//    }
//    
//    // GET /users/{ id }
//    users.get(":id") { (req) -> String in
//        guard let id = req.parameters.get("id") else { throw Abort(.badRequest) }
//        return "/users/\(id)"
//    }
//    
//    // POST /users
//    users.post { (req) -> String in
//        return "POST /users"
//    }
//    
//    // http://127.0.0.1:8080/movies/genre/fiction
////    app.get("movies", "genre", "fiction") { req -> String in
////        return "/movies/genre/fiction"
////    }
    
}
