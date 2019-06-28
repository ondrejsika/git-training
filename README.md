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


## New Repository

Create on [Github](https://github.com/new) (eg.: `example-repository`) and clone it.

```
git clone git@github.com:ondrejsika/example-repository.git
```


## Gitignore

File `.gitignore` defines files ignored by Git. Those files doesn't exist for Git.

```
node_modules
.vscode
out
```

## EditorCongfig

File `.editorconfig` define editors behavior, as configuration like you prefer spaces before tabs and tab size, for example.

```
root = true
[*]
indent_style = space
indent_size = 2
charset = utf-8
trim_trailing_whitespace = true
insert_final_newline = true
end_of_line = lf
max_line_length = null
```
