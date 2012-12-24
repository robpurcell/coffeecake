class UrlMappings {

    static mappings = {
        "/about"(view: "/siteinfo/about")
        "/systeminfo"(view: "/siteinfo/systeminfo")

        /*
         * Pages with controller
         * WARN: No domain/controller should be named "api" or "mobile" or "web"!
         */
        "/" (controller: "home")

        /*
         * System Pages without controller
         */
        "403"(view: '/_errors/403')
        "404"(view: '/_errors/404')
        "500"(view: '/_errors/error')
        "503"(view: '/_errors/503')
    }
}