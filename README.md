# Ansible

Ansible files to set up my PCs when I reinstall Windows or whatever.

## Quickstart

## Modifying Ansible Files

To get into a Python venv with ansible deps, use

```shell
just env
```

## Testing

Testing can be done somewhat manually via a Docker container to see if everything installs correctly.

1. Set up docker stuff:

    ```shell
    just setup  # Set up the docker image
    just test-image  # Runs the test image interactively
    ```

2. **Inside Docker**:

    ```shell
    ansible-playbook -i hosts ubuntu2204/main.yaml
    ```

3. Make sure it has installed everything you want it to install!

## TODO

1. We're probably going to need this stuff to not _all_ be installed with root.

2. Conda doesn't put its stuff into bashrc.

3. We never change the shell to zsh in this script.
