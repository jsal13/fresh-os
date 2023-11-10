FROM python:3.12.0-bookworm

ENV run="ansible-playbook -vv -i hosts ubuntu2204/main.yaml"

WORKDIR /app

RUN pip install ansible
