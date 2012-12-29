grails.servlet.version = "2.5" // Change depending on target container compliance (2.5 or 3.0)
grails.project.class.dir = "target/classes"
grails.project.test.class.dir = "target/test-classes"
grails.project.test.reports.dir = "target/test-reports"
grails.project.target.level = 1.6
grails.project.source.level = 1.6
//grails.project.war.file = "target/${appName}-${appVersion}.war"

grails.project.dependency.resolution = {
    // inherit Grails' default dependencies
    inherits("global") {
        // specify dependency exclusions here; for example, uncomment this to disable ehcache:
        // excludes 'ehcache'
    }
    log "warn" // log level of Ivy resolver, either 'error', 'warn', 'info', 'debug' or 'verbose'
    checksums true // Whether to verify checksums on resolve

    def gebVersion = "0.7.2"
    def seleniumVersion = "2.25.0"

    repositories {
        inherits true // Whether to inherit repository definitions from plugins

        grailsPlugins()
        grailsHome()
        grailsCentral()

        mavenLocal()
        mavenCentral()

        // uncomment these (or add new ones) to enable remote dependency resolution from public Maven repositories
        //mavenRepo "http://snapshots.repository.codehaus.org"
        //mavenRepo "http://repository.codehaus.org"
        //mavenRepo "http://download.java.net/maven/2/"
        //mavenRepo "http://repository.jboss.com/maven2/"
    }
    dependencies {
        test("org.seleniumhq.selenium:selenium-htmlunit-driver:$seleniumVersion") {
            exclude "xml-apis"
        }

        test("org.seleniumhq.selenium:selenium-firefox-driver:$seleniumVersion")
        test("org.seleniumhq.selenium:selenium-support:$seleniumVersion")

        test "org.codehaus.geb:geb-spock:$gebVersion"
        test "org.spockframework:spock-grails-support:0.7-groovy-2.0"
    }

    plugins {
        compile ":scala:0.6.4"
        compile ":angularjs-resources:1.0.3.rob"
        compile ":lesscss-resources:1.3.0.3"
        compile ":coffeescript-resources:1.4.0"
        compile ":twitter-bootstrap:2.2.2"
        compile ":cache-headers:1.1.5"

//        runtime ":database-migration:1.1"
        runtime ":hibernate:$grailsVersion"
        runtime ":jquery:1.8.3"
        //runtime ":resources:1.1.6"
        runtime ":zipped-resources:1.0"
//        runtime ":cached-resources:1.0"

        build ":tomcat:$grailsVersion"

        test ":geb:$gebVersion"
        test(":spock:0.7") {
            exclude "spock-grails-support"
        }
    }
}
