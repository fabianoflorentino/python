# A container image for run python 3.11

[![BUILD IMAGE PYTHON 3.11](https://github.com/fabianoflorentino/python/actions/workflows/build.yml/badge.svg)](https://github.com/fabianoflorentino/python/actions/workflows/build.yml)

## **Usage**

| **Variable** | **Description** |
| --- | --- |
| $PWD | Current work directory with python code |

### **Modules on Image**

**[./requirements.txt](./requirements.txt)**

```txt
astroid==2.14.2
dill==0.3.6
isort==5.12.0
lazy-object-proxy==1.9.0
mccabe==0.7.0
mypy==1.0.1
mypy-extensions==1.0.0
pep8==1.7.1
platformdirs==3.1.0
pylint==2.16.3
tomlkit==0.11.6
typing_extensions==4.5.0
wrapt==1.15.0
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
