# Ansible

Ansible files to set up my PCs when I reinstall Windows or whatever.

## Quickstart

### General Quickstart for WSL

If you've already got a Windows install with SSH and you're reinstalling WSL stuff, great.  If not, you'll need to do the appropriate SSH stuff to get github to work.  This assumes you have github access.

```shell
cp -r /mnt/c/Users/james/.ssh ~  # your use name.
chmod 600 ~/.ssh/id_rsa

# Install dotfile repo.  Skip if you aren't me.
git init
git checkout -b main
git remote add origin git@github.com:jsal13/dotfiles
git pull origin main

# Annoying Thing: we need a sudo password
# for ansible.
# REF: https://github.com/jsal13/ansible-setup/issues/7
sudo ls  # Put in the sudo password here.

# Get ansible stuff.
sudo apt update
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install -y ansible software-properties-common
git clone ssh://git@github.com/jsal13/ansible
cd ansible/ubuntu2204
ansible-playbook -i hosts main.yaml
```

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
