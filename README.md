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
cd example-repository
```

or create it locally

```
mkdir example-repository
cd example-repository
git init
```


## Gitignore

File `.gitignore` defines files ignored by Git. Those files doesn't exist for Git. This is a simple example for Next.js project.

```
.vscode
node_modules
.next
out
```

## EditorCongfig

File `.editorconfig` define editors behavior, like spaces vs tabs or tab size, for example.

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

### Partial `git add`

You can use `-p` to switch into interactive mode and select part of changed file, which you want to commit.

```
git add -p <path>
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

### Remote Repository (Github, Gitlab)

If you have clonned repository, `git clone` has added configuration of repository.

Check it by:

```
git remote -v
```

and you will see:

```
ondrej@sika-macbookpro:~/example-repository (master)$ git remote -v
origin	git@github.com:ondrejsika/example-repository.git (fetch)
origin	git@github.com:ondrejsika/example-repository.git (push)
```

If you've created repository by `git init` you see nothing.

### Add Remote Repository

To add remote repository, you have to use:

```
git remote add <name> <url>
```

For example:

```
git remote add origin git@github.com:ondrejsika/example-repository.git
```

Now you can push & share your code with collaborators. Check `git remote -v`.

### Rename & Remove Remote Repository

If you want to rename remote repository, use:

```
git remote rename <name> <new name>
```

If you want delete remote, use:

```
git remote remove <name>
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

### Stash

Git stash is used for temporarily postpone your changes to make your working directory clean.

That's required by some Git commands like `git rebase`, ... or sometimes for `git checkout`, `git cherry-pick`, ...

If you want to stash changes, use:

```
git stash
```

And check status using `git status`.

If you want to see, which files are stashed, use:

```
git stash show
```

If you want to see patch, add `-p`:

```
git stash -p
```

If you want to apply stashed changes and remove stash, use:

```
git stash pop
```

And check `git diff` and `git stash show`.

More about stash in offical documentation - <https://git-scm.com/docs/git-stash>


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


## Git Reset

Reset HEAD (current brach) to specific state.

Set HEAD to specific state, but don't change files in working directory.

```
git reset <commit>
```

If you want also reset files, use `--hard`:

```
git reset --hard <commit>
```

### Remove Last Commit

For example, you want to remove last commit but want to keep changes:

```
git reset HEAD~1
```

See `git status` and `git diff`, files from last commit are now in changed.

If you want remove last commit with its changes, use:

```
git reset --hard HEAD~1
```

And see (`git status`, `git diff`), no changes.
