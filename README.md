# Clean Memory

## instalation

## download the package

[download](https://github.com/gabriel-logan/clean-memory/raw/main/package/clean-memory.deb)
or download using wget

```bash
wget https://github.com/gabriel-logan/clean-memory/raw/main/package/clean-memory.deb
```

then:

```bash
dpkg -i clean-memory.deb
```
now you can use the package in the terminal

```bash
clean_memory.sh
```


################################################################################

if you receive the following message when trying to install the package

```bash
root@debian:/home/logan/Desktop# dpkg -i clean-memory.deb
dpkg: warning: 'ldconfig' not found in PATH or not executable
dpkg: warning: 'start-stop-daemon' not found in PATH or not executable
dpkg: error: 2 expected programs not found in PATH or not executable
Note: root's PATH should usually contain /usr/local/sbin, /usr/sbin and /sbin
```

run the following command

```bash
export PATH=$PATH:/usr/local/sbin:/usr/sbin:/sbin
```

and try to install the package again

```bash
dpkg -i clean-memory.deb
```

now you can use the package in the terminal

```bash
clean_memory.sh
```

## NOTE

You need to run as a super user

### By Gabriel Logan