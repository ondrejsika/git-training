# Git Training

    2019 Ondrej Sika <ondrej@ondrejsika.com>
    https://github.com/ondrejsika/git-training


## Install Git

Download installer from <https://git-scm.com> or use package manager.


### Mac

```
brew install git
```

### Linux

```
apt install git
```

### Windows

```
choco install git
```

## Basic Configuration

```
git config --global user.name "Ondrej Sika"
git config --global user.email "ondrej@ondrejsika.com"
```

### Rebase workflow (if you want to use rebase workflow)

```
git config --global pull.ff only
git config --global merge.ff only
git config --global pull.rebase true
```
