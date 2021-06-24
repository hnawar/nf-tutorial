#!/usr/bin/env nextflow

inpu_file = params.input_file

process rename_to_out {

    output:
    file '*.out' 

    """
    mv $input_file ${input_file}.out
    """
}
