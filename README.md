# Ansible

Ansible files to set up my PCs when I reinstall Windows or whatever.

## Quickstart

## Testing

Testing can be done somewhat manually via a Docker container to see if everything installs correctly.

1. Set up docker stuff:

    ```shell
    just setup  # Set up the docker image
    just test-image  # Runs the test image interactively
    ```

2. **Inside Docker**:

    ```shell
    cd ubuntu2204  # cd into the playbook to test
    ansible-playbook -i ../hosts main.yaml
    ```

3. Make sure it has installed everything you want it to install!
