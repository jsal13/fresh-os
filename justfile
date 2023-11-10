set shell := ["zsh", "-cu"]

default:
    just --list

setup:
    docker build -t ansible_test .

test-image:
    docker run --rm -it -v $(pwd):/app ansible_test /bin/bash

run playbook:
    ansible-playbook -i hosts {{playbook}}