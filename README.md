# instalation

## Add repository

```bash
echo "deb [trusted=yes] https://github.com/gabriel-logan/Clean-Memory-Limpa-Ram/ package/" | sudo tee /etc/apt/sources.list.d/clean-memory.list
sudo apt update
```

## Install package

```bash
sudo apt install clean-memory
```

## Use

```bash
clean_memory.sh
```