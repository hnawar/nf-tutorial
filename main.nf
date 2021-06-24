#!/usr/bin/env nextflow

input_file = params.input_file

process rename_to_out {

    output:
    file '*.out' 

    """
    mv $input_file ${input_file}.out
    """
}
