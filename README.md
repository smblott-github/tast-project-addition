## Test Project Addition

This test project implements programs to add together their command-line
arguments in various programming languages.

It is intended for the demonstration of git.

### Build

Use:
```shell
$ make build
```

### Run

Java:
```shell
$ java Add 1 2 3
```
```
6
```

Python:
```shell
$ python add.py 1 2 3
```
```
6
```

C:
```shell
$ ./add 1 2 3
```
```
6
```

### Tests

Use:
```shell
$ make test
```

## Git Notes

For reference, here are some the git commands we've been using.

Below, text in capital letters should be replaced as appropriate.

```shell
# Getting started:
git clone git@turing.computing.dcu.ie:USERNAME/test-project-addition.git
cd test-project-addition

# Building and testing:
make build
make test

# Set your git identity:
git config user.name "YOUR NAME"
git config user.email YOUR_SCHOOL_OF_COMPUTING_EMAIL_ADDRESS

# Create a new branch (here named "work"):
git checkout -b NEW_BRANCH_NAME

# Changing branch:
git checkout

# Check the status of the current repo:
git status

# Viewing the git log:
git log

# Viewing the git log interactively (if tig is available):
tig

# Adding files:
git add SOME_FILE_NAME

# Committing changes:
git commit -a -m "SOME COMMIT MESSAGE."

# Pushing changes:
git push origin BRANCH_NAME

# Pulling changes:
git pull

# Stashing changes:
git stash
git stash pop

# Adding a new remote:
git remote add upstream UPSTREAM_REPO_URL
git fetch upstream

# Merging upstream changes:
git merge upstream/master
```
