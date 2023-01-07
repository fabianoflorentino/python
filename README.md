# A container image for run python 3.11

[![BUILD IMAGE PYTHON 3.11](https://github.com/fabianoflorentino/python/actions/workflows/build.yml/badge.svg)](https://github.com/fabianoflorentino/python/actions/workflows/build.yml)

## **Usage**

| **Variable** | **Description** |
| --- | --- |
| $PWD | Current work directory with python code |

### **Modules on Image**

**[./requirements.txt](./requirements.txt)**

```txt
pylint==2.13.4
pep8==1.7.1
```

### **Local Usage**

```bash
# Build
docker build --no-cache -t <IMAGE NAME>:<TAG> -f ./Dockerfile .

# Run
docker run -it --name python -v $PWD:/app -w /app --entrypoint "" fabianoflorentino/python:3.11 sh
```

### **Local Usage from Remote**

```bash
# Pull (Download)
docker pull fabianoflorentino/python:3.11

# Run
docker run -it --name python -v $PWD:/app -w /app --entrypoint "" fabianoflorentino/python:3.11 sh
```
