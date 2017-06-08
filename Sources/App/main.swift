import Vapor
import Foundation
import Auth
import Fluent
import VaporPostgreSQL
import Routing
import HTTP

// Controllers
let userController = UserController()

let drop = Droplet()
let auth = AuthenticationMiddleware()

// Database preparation
do {
    try drop.addProvider(VaporPostgreSQL.Provider.self)
    drop.preparations += User.self
} catch {}

// Set documentation route
drop.get { (req) -> ResponseRepresentable in
    return try drop.view.make("doc.html")
}

// Create API group
let api: RouteGroup = drop.grouped("api")

// Create register endpoint
setupRegisterRoute(for: api)

// Create resource endpoints
api.resource("users", userController.setupRoutes(for: api, baseRoute: "users"))

// Setup custom middleware
drop.middleware.append(auth)

drop.run()

