modules = {
    application {
        resource url: 'js/application.js'
    }

    app {
        dependsOn 'jquery, coffee, bootstrap'
        resource url: 'css/app.css'
    }

    coffee {
        dependsOn 'angular-resource'
        resource url: 'cs/app.coffee'
        resource url: 'cs/services.coffee'
    }

}