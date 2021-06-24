#!/usr/bin/env nextflow

input_file = params.input_file

process rename_to_out {
    input:
    file input from input_file

    output:
    file '*.out' 

    """
    mv $input ${input}.out
    """
}
