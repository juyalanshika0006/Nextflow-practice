workflow {
    def numbers = Channel.of(1, 2, 3, 4, 5)
    def doubled = numbers.map { it * 2 }
    doubled.view { "Doubled: $it" }

    Channel.of(10, 20, 30, 40, 50)
        .filter { it > 25 }
        .view { "Big: $it" }
}
