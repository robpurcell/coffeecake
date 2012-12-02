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
    log "error" // log level of Ivy resolver, either 'error', 'warn', 'info', 'debug' or 'verbose'
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
        compile "org.scala-lang:scala-library:2.9.2"

        test("org.seleniumhq.selenium:selenium-htmlunit-driver:$seleniumVersion") {
            exclude "xml-apis"
        }

        test("org.seleniumhq.selenium:selenium-firefox-driver:$seleniumVersion")
        test("org.seleniumhq.selenium:selenium-support:$seleniumVersion")

        test "org.codehaus.geb:geb-spock:$gebVersion"
    }

    plugins {
        compile ':cache:1.0.0'
        compile ":coffeescript-resources:0.3.2"
        compile ":twitter-bootstrap:2.2.1"

        runtime ":database-migration:1.1"
        runtime ":hibernate:$grailsVersion"
        runtime ":jquery:1.7.2"
        runtime ":resources:1.2.RC2"

        build ":tomcat:$grailsVersion"

        test ":geb:$gebVersion"
        test ":spock:0.7"
    }
}
