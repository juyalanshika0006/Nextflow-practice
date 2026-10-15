process createFile {
    output:
    path 'numbers.txt'

    script:
    """
    seq 1 5 > numbers.txt
    """
}
process squareNumbers {
    input:
    path input_file

    output:
    path 'squared.txt'

    script:
    """
    awk '{print \$1 * \$1}' $input_file > squared.txt
    """
}
process displayResults {
    input:
    path result_file

    output:
    stdout

    script:
    """
    echo "=== Squared numbers ==="
    cat $result_file
    """
}
workflow {
    createFile()
    squareNumbers(createFile.out)
    displayResults(squareNumbers.out).view()
}
