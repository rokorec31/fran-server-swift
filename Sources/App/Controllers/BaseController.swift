//
//  BaseController.swift
//  Fran
//
//  Created by i.hung on 07/06/2017.
//
//

import Vapor
import Routing
import HTTP

protocol BaseController {
    func setupRoutes(for group: RouteGroup<Responder, Droplet>, baseRoute: String) -> Self
}
