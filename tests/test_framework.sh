#!/bin/bash

# Simple test script for the CLI framework

# Test main usage
test_main_usage() {
    output=$(../skeleton-cli-sh)
    if [[ $output == *"Usage: ../skeleton-cli-sh <subcommand> [options]"* ]]; then
        echo "PASS: Main usage test"
    else
        echo "FAIL: Main usage test"
    fi
}

# Test example subcommand
test_example_subcommand() {
    output=$(../skeleton-cli-sh example --configure network)
    if [[ $output == *"Configuring network..."* ]]; then
        echo "PASS: Example subcommand (configure network) test"
    else
        echo "FAIL: Example subcommand (configure network) test"
    fi

    output=$(../skeleton-cli-sh example --list user)
    if [[ $output == *"Listing user configuration..."* ]]; then
        echo "PASS: Example subcommand (list user) test"
    else
        echo "FAIL: Example subcommand (list user) test"
    fi
}

# Run tests
test_main_usage
test_example_subcommand
