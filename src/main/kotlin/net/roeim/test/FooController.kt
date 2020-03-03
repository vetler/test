package net.roeim.test

import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController

@RestController
class FooController {

    @GetMapping("/")
    fun getMessage() = "hello world"

}