# Ansible image



## Build image

docker build -t ansible_finanztip:latest .

## Run image

```bash
export USERNAME=your_ssh_username
docker run -it --rm --name ansible -e "ANSIBLE_REMOTE_USER=${USERNAME}" -v ~/.ssh:/root/.ssh -v ~/.finanztip:/root/.finanztip -v $(pwd):/mnt ansible_finanztip:latest
```
