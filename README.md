# Ansible image



## Build image

docker build -t ansible_finanztip:latest .

## Run image

```bash
docker run -it -v ~/.ssh:/root/.ssh/ -v ~/git/github.com/devops.ansible-2023/:/mnt --entrypoint bash ansible_finanztip:latest
```
