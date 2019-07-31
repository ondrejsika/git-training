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

## Editor

I prefer VS Code, you can download it here: <https://code.visualstudio.com/download>

Or download it using package manager:


### Mac

```
brew cask install visual-studio-code
```


### Windows

```
choco install vscode
```


## Basic Configuration

I prefer global configuration (using `--global`) stored in your home directory applied to all repositories.

You can configure just one repo, you can call `git config` from you repository with flag `--local`.

```
git config --global user.name "Ondrej Sika"
git config --global user.email "ondrej@ondrejsika.com"
```

### Rebase workflow (if you want to use rebase workflow)

__WARNING__: Apply only if you want to use rebase workflow!

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

## Basic Commands

### `git status`

Show status of repository. See which files are edited or want to be committed.

```
git status
```

### `git add`

Add file to next commit

```
git add <path>
```

Examples

```
git add index.html
git add .
```

### Unstage

Remove changes from next commit

```
# Unstage new file
git rm --cached <path>

# Unstage changes
git reset HEAD <path>
```

Examples

```
git rm --cached index.html
git reset HEAD index.html
git rm --cached .
git reset HEAD .
```

### `git commit`

Save prepared changes to repository

#### Create commit from all staged changes

```
git commit
```

#### Create commit form all changes (not new files)

```
git commit -a
```

#### Specify message in parameter insted of open vim

```
git commit -m "<message>"
```

#### Combination of -a -m params

```
git commit -am "<message>"
```

#### Update latest commit

```
git commit --amend
```

### `git log`

Show history of commits

```
git log
git log --oneline
git log --oneline --graph --all
```

### Browsing history

#### Tig

Simple terminal history browser for Git

##### Install

Mac

```
brew install tig
```

Linux

```
apt install tig
```

##### Usage

```
# only actual branch
tig

# all branches
tig --all
```

#### Gitk

Graphic commit log. Distributed with Git.

```
# only actual branch
gitk

# all branch
gitk --all
```

### `git push`

Push your commits to remote repository (Github).

```
# Push new branch to repository
git push <remote> <branch> -u

# Push commit
git push
```


### `git pull`

Pull new commits from remote repository (Github).

```
git pull
```

## Working with Branches

### List Branches

```
# Show local branches
git branch

# Show all branches (with the branches of remote repository - on Github)
git branch --all
```

### Create a Branch

```
# Create branch (and dont switch to it)
git branch <new_branch> [<branch_from>]

# Switch branch
git checkout <branch>

# Create branch and switch to it
git checkout -b <new_branch> [<branch_from>]
```

### Switch Branch

```
git checkout <branc>
```

### Push & Pull Branch

```
# Push commits to remote repository (Github)
git push <remote> <branch> -u

# Pull new commits to my branch
git pull
```

### Merging Branches

You can merge branches locally or on Github / Gitlab using Pull / Merge Requests.
