package net.roeim.test

import org.springframework.boot.Banner
import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class FooApplication

fun main(args: Array<String>) {
    runApplication<FooApplication>(*args) {
        setBannerMode(Banner.Mode.OFF)
    }
}
