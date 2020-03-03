package net.roeim.test.test

import org.springframework.boot.CommandLineRunner
import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class TestApplication : CommandLineRunner {
	override fun run(vararg args: String?) {
		println("Hello world!")
	}
}

fun main(args: Array<String>) {
	runApplication<TestApplication>(*args)
}
