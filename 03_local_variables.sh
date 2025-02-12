#!/bin/bash
greet() {
    local message="Hello"
    echo "$message, $1!"
}
greet "Alice"