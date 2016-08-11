class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view: "/index")
        "500"(view:'/error')
        "/json/$user/$project/$method"(controller: 'json',action: 'index')
//        "/json"(controller: 'json',action: 'index')
}
}
