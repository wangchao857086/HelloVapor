import Vapor

let drop = Droplet()

drop.get { request in
//    return "Hello vapor"
    return try JSON(node:[
        "message": "Hello,Vapor!",
        "name": "wangchao"
        ])
}
drop.get("Hello") { request in
    //    return "Hello vapor"
    return try JSON(node:[
        "message": "Hello,Vapor!",
        "name": "wangchao"
        ])
}
drop.get("Hello","there") { request in
    //    return "Hello vapor"
    return try JSON(node:[
        "message": "Hello,Vapor!123",
        "name": "wangchao"
        ])
}
drop.get("beers",Int.self) { request,beers in
    //    return "Hello vapor"
    return try JSON(node:[
        "beers": "\(beers-1)",
        "name": "wangchao"
        ])
}


drop.resource("posts", PostController())

drop.run()
