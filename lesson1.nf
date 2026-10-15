process sayHello {
    input:
    val name

    output:
    stdout

    script:
    """
    echo "Hello, $name!"
    """
}

workflow {
    Channel.of('Anshika', 'Nextflow', 'World') | sayHello | view
}
