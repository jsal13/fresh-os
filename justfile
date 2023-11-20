set shell := ["zsh", "-cu"]

default:
    just --list

env:
    python -m venv .venv \
    &&  .venv/bin/pip install -r requirements.txt

setup:
    docker build -t ansible_test .

test-image:
    docker run --rm -it -v $(pwd):/app ansible_test /bin/bash

run playbook:
    ansible-playbook -i hosts {{playbook}}