## Cheat Sheet

### Cloning a repo

To get a local copy of a Gitlab repo you first need a copy of the URL for the repo.

Then:

```shell
# Clone the repo.
git clone REPO_URL

# See what new directory you have.
ls -l

# Change directory in to the new clone.
cd DIRECTORY
```

### One-time set up

The following steps need to be done every time you create a new clone of a repo:

```shell
# Set your name.
git config user.name "YOUR NAME"

# Set your email address.
git config user.email DCU_EMAIL_ADDRESS

# Set your preferred editor.
git config --global core.editor "gedit -s"

# Set caching of your user name and password (for 15 minutes).
git config credential.helper cache
```

All of the above only have to be done *once* for each new clone.

If you prefer to use a different text editor, see the note under *Setting your
preferred text editor* at the bottom of this page.

### Making changes

Edit files as needed.

Then:

```shell
# Commit your changes.
git commit -a

# This opens an editor in which you enter the commit message.  Enter the commit
# message, save and exit, then...

# Push your new commit(s) to Gitlab.
git push
```

If you add a new file and you want git to track it, then:
```shell
git add NEW_FILE
```

If you add a new file and you *do not* want git to track it, then add a file `.gitignore`.  The contents of `.gitignore` can be something like:
```
# Ignore C object files.
*.o

# Ignore Java class files.
*.class

# Ignore an entire directory.
build/

# Ignore a specific file.
build.log
```

If you create a **new** `.gitignore` file, then you will have to tell git to track it:
```shell
git add .gitignore
git commit -a
git push
```

### Checking the status

```shell
# View the commit history.
git log

# View the status.
git status

# List remotes.
git remote -v
```

### Pulling upstream changes

If you will be pulling changes from an upstream repo then you will need the URL of the upstream repo.

```shell
# Add a remote (this only has to be done once).
git remote add upstream UPSTREAM_REPO_URL

# Fetch the latest version of the upstream repo.
git fetch upstream

# View changes in upstream repo (optional).
git diff upstream/master

# Merge changes from the upstream repo.
git merge upstream/master

# If there are merge conflicts, then you will need to fix them (in a text editor)
# then push them to your Gitlab clone.  First fix the conflicts, then...
git commit -a
git push
```

### Branches

A branch is just a sequence of change sets (or commits) that transform an empty
file system to the project's current state.

The default branch is known as `master`.

Creating a new branch from the current state of the current branch:
```shell
git checkout -bt FEATURE_BRANCH
git push -u
```

Creating a new branch from a remote branch (`upstream`, here):
```shell
git fetch upstream
git checkout upstream/FEATURE_BRANCH
git checkout -bt FEATURE_BRANCH
git push -u
```

Changing the current branch:
```shell
git checkout OTHER_BRANCH_NAME
```

Jump *quickly* back and forward between the two most recent branches:
```shell
git checkout -
```

Merging changes from a feature branch
```shell
git checkout master
git merge FEATURE_BRANCH
git push
```

### Setting your preferred text editor

In the example at the very top of this page, the text editor to use is set to `gedit -s`.

You can use any text editor, however there is a catch.

The text editor you use *must be blocking* and *must not be shared*:  when
opened from the shell, the shell must block until the editor closes, and when
two files are edited at the same time, that must happen within two separate
editor instances.

The reason for this is that `git commit` must be able to detect when you have
finished editing the commit message (specifically, when the editor exits).

Here are the settings for some other popular text editors (from [here](https://help.github.com/articles/associating-text-editors-with-git/)):
```shell
# Use sublime, where sublime is installed as "subl".
git config --global core.editor "subl -n -s"

# Use sublime, where sublime is installed as "sublime_text".
git config --global core.editor "sublime_text -n -s"

# Use TextMate.
git config --global core.editor "mate -w"

# Use gvim.
git config --global core.editor "gvim -f"
```

