#!/usr/bin/env nextflow

input_file = params.input_file

process rename_to_out {
    input:
    file input from input_file

    output:
    file '*.out' 
    
    container "eu.gcr.io/google-containers/debian-base:v1.0.1"
    
    """
    mv $input ${input}.out
    """
}
