<pre>1. Git Configuration

a.) git config --global user.name &quot;Your Name&quot;
Sets the name that will be attached to your commits and tags.

b.) git config --global user.email &quot;you@example.com&quot;
Set the e-mail address that will be attached to your commits and tags.

c.) git config --global color.ui auto
Enables some colorization of Git output.

2. Starting A Project

a.) git init [project name]
Creates a new local repository. If [project name] is provided, Git will create a new directory name [project name] and 
will initialize a repository inside it. If [project name] is not provided, then a new repository is initialized in the 
current directory.

b.) git clone [project url]
Downloads a project with the entire history from the remote repository.

3. Day - To - Day Work

a.) git status
Displays the status of your working directory. Options include new, staged, and modified files. It will retrieve branch
 name, current commit identifier, and changes pending commit.

b.) git add [file]
Add a file to the staging area. Use in place of the full file path to add all changes files from the current directory 
down into the directory tree.

c.) git diff [file]

Show changes between the staging area and the repository.

d.) git diff --staged [file]

Show any changes in working directory. This operation is unrecoverable.

e.) git checkout -- [file]

Discard changes in working directory. This operation is unrecoverable.

f.) git reset [file]

Revert your repository to a previous known working state.

g.) git commit 
Create a new commit from changes added to the staging area. The commit must have a message!

h.) git rm [file]
Remove file from working directory and staging area.

i.) git stash
Put current changes in your working directory into stash for later use.

j.) git stash pop
Apply stored stash content into working directory, and clear stash.

k.) git stash drop
Delete a specific stash from all your previous stashes.

4. Git branching model

a.) git branch [-a]
List all local branches in repository. With -a: show all branches (with remote).

b.) git branch [branch_name]

Create new branch, referencing the current HEAD.

c.) git checkout [-b][branch_name]
Switch working directory to the specified branch. With -b: Git will create the specified branch if it does not exist.

d.) git merge [from name]
Join specified [from name] branch into your current branch (the one you are on currently).

e.) git branch -d [name]
Remove selected branch, if it is already merged into any other. -D instead of -d forces deletion.

5. Review your work

a.) git log [-n count]
List commit history of current branch. -n count limits list to last n commits.

b.) git log --oneline --graph --decorate
An overview with reference labels and history graph. One commit per line.

c.) git log ref..
List commits that are present on the current branch and not merged into ref. A ref can be a branch name or a tag name.

d.) git log ..ref
List commit that are present on ref and not merged into current branch.

e.) git reflog
List operations (e.g. checkouts or commits) made on local repository.

6. Tagging known commits

a.) git tag
List all tags.

b.) git tag [name] [commit sha]
Create a tag reference named name for current commit. Add commit sha to tag a specific commit instead of current one.

c.) git tag -a [name] [commit sha]
Create a tag oject named name for current commit.

7. Reverting changes

a.) git reset [--hard] [target reference]
Switches the current branch to the target reference, leaving a difference as an uncommitted change. When --hard is used
, all changes are discarded.

b.) git revert [commit sha]
Create a new commit, reverting changes from the specified commit. It generates an inversion of changes.

8. Synchronizing repositories

a.) git fetch [remote]
Fetch changes from the remote, but not update tracking branches.

b.) git fetch --prune [remote]
Delete remote Refs that were removed from the remote repository.

c.) git pull [remote]
Fetch changes from the remote and merge current branch with its upstream.

d.) git push [--tags] [remote]
Push local changes to the remote. Use --tags to push tags.

e.) git push -u [remote] [branch]
Push local branch to remote repository. Set its copy as an upstream.

Commit: an object
Branch: a reference to a commit; can have a tracked upstream
Tag: a reference (standard) or an object (annotated)
Head: a place where your working directory is now

A. Git installation

For GNU/Linux distributions, Git should be available in the standard system repository. For example, in Debian/Ubuntu p
lease type in the terminal:
sudo apt-get install git
If you need to install Git from source, you can get it fro: git-scm.com/downloads

B. Ignoring Files

Very the .gitignore file exists in your project and ignore certain type of files, such as all files in logs directory (
excluding the .gitkeep file
</pre>
