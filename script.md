## Script for git walk through

### Fork the repo

You do this on Gitlab, [here](/sblott/test-project-addition).

### Clone the new fork

```shell
git clone git@gitlab.computing.dcu.ie:USER_NAME/test-project-addition.git
cd test-project-addition
```

### Build and test

```shell
ls -l
make
ls -l
make test
```

### Status

Observe the untracked files:
```shell
git status
```

### Add .gitignore

Discuss tracked files.

Discuss what *should not* be tracked.

```
# Ignore the C executable.
add

# Ignore java class files.
*.java
```

```shell
git add .gitignore
git commit -a
git push
```

### View the log

```shell
git log
```

Discuss: a git branch is a sequence of change sets.

### Fix error

Fix error in `./add-python2.py`.  **Do not** fix the tests.

In parallel, `sblott` installs Perl implementation

```shell
git remote add upstream git@gitlab.computing.dcu.ie:sblott/test-project-addition.git
git fetch upstream
git diff upstream/master
git merge upstream/master
git push
```

### Create merge conflict

Students extend tests in Makefile, `sblott` adds Perl test (and, hopefully we
get a merge conflict).

### CI

Discuss the Docker test environment:

- `.gitlab-ci.yml`.
- Builds.
- Docker environment.
- [MySql project](https://gitlab.computing.dcu.ie/sblott/test-project-mysql) and it's [configuration file](https://gitlab.computing.dcu.ie/sblott/test-project-mysql/blob/master/.gitlab-ci.yml).
