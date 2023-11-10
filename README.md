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
    # Using whatever playbook at the end
    ansible-playbook -i hosts ubuntu2204/main.yaml
    ```

3. Make sure it has installed everything you want it to install!
