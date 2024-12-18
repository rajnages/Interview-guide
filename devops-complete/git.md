# what is git why we used?
Git is a version control system that helps track changes to files and code over time.

# What is the difference between Git and GitHub?
Answer:
- Git is a version control tool for tracking changes locally.
- GitHub is a cloud-based platform to store, share, and collaborate on Git repositories remotely.

# What is the difference between git pull and git fetch?
Answer:
- git pull: Fetches changes from a remote repository and immediately merges them into your local branch.
- git fetch: Fetches changes but does not merge them; you can review the changes first.

# What is a Git branch and why do we use it?
Answer:
- A branch in Git is a pointer to a separate line of development. It allows developers to work on features or fixes independently without affecting the main codebase (usually main or master).

# What is the difference between git merge and git rebase?
Answer:
- git merge: Combines two branches by creating a new “merge commit.”
- git rebase: Moves or “rebases” the current branch’s commits on top of another branch, creating a cleaner history.

# What is the purpose of the .gitignore file?
Answer:
- The .gitignore file specifies files and directories that Git should ignore and not track, such as logs, environment files, and build outputs.

# What is a commit in Git?
Answer:
- A commit is a snapshot of the project at a specific point in time. Each commit has a unique ID and includes changes, a message, and metadata (author, date).

# How do you resolve a merge conflict?
Answer:
- Identify conflicting files using git status.
- Open the files and resolve the conflicts manually.
- Stage the resolved files using git add.
- Commit the changes with git commit.

# What is git stash and when is it used?
Answer:
- git stash temporarily saves changes that are not ready to be committed, allowing you to switch branches without losing progress. You can retrieve them later with git stash pop

# What is the purpose of git reset and git revert?
Answer:
- git reset: Moves the branch pointer to a previous commit, erasing changes.
- git revert: Creates a new commit that undoes changes introduced by a previous commit, keeping history intact.

# What is a remote repository?
Answer:
- A remote repository is a version of your project hosted on a server or cloud platform like GitHub, GitLab, or Bitbucket, allowing team collaboration.

# What is a Git tag?
Answer:
- A tag is a reference to a specific commit, often used to mark versions/releases of a project.

# How do you undo the last commit?
Answer:
- To undo the last commit but keep the changes:
git reset --soft HEAD~1
- To undo the commit and discard changes:
git reset --hard HEAD~1

# lifecycle of git
# Summary
1. working directory ->  staging area => git add
2. staging area -> local repo => git commit -m ""
3. local repo -> remote repo => git push origin main
-> working directory -> staging area -> local repo -> remote repo

# How do you squash multiple commits into one?
Answer:
-  Use git rebase -i to combine multiple commits into one.
git rebase -i HEAD~<number-of-commits>

# What is a fork in GitHub?
Answer:
- A fork is a copy of someone else's repository that you can modify independently.

# difference between git branch and git tag?
-> branch
1. A branch is a pointer to a specific commit in your repository It is movable and as you make new commits, the branch pointer moves forward
2. You can create, delete, and switch between branches.

-> tag
1. A tag is a fixed marker (snapshot) of a specific commit.It does not move.
2. Tags are read-only.
3. You cannot modify tags easily; they are used for reference.

# difference between git log and git reflog
Use git log when you want to see the commit history of a branch.
Use git reflog when you need to recover lost commits or debug HEAD changes.

# difference between git stash and git commit
1. Temporarily saves uncommitted changes without creating a new commit.
2. Save changes as a commit in the repository’s history.

# Scenario 2: Accidentally Committed to the Wrong Branch
# Question: "You accidentally committed changes to the main branch instead of the feature branch. How do you move your commit from the main branch to the correct feature branch?"
Answer:
- Step 1: Use git checkout feature-branch to switch to the correct branch.
- Step 2: Use git cherry-pick <commit-id> to apply the commit from the main branch to your feature-branch. You can find the commit ID using git log.
- Step 3: After cherry-picking, git reset HEAD~1 will remove the commit from the main branch.
- Step 4: Push the changes to the remote repository using git push.

# git LFS:
- Git LFS (Large File Storage): Git LFS replaces large binary files with text pointers inside Git, while storing the actual files outside the Git repository.

# Scenario 1: Resolving Merge Conflicts
# Question: "You're working on a project and both you and your teammate are making changes to the same file. You try to merge your branch into main, but you get a merge conflict. How would you resolve this conflict?"
Answer:
- Step 1: When you attempt the merge and get a conflict, Git will mark the conflicting sections in the file.
- Step 2: Open the file with conflicts and manually resolve the differences.
- Step 3: Once you have resolved the conflict, stage the file using git add filename.
- Step 4: Commit the changes using git commit. Git will automatically create a merge commit message.
- Step 5: Finally, push the merged branch using git push.

# Scenario 6: Reverting a Commit that Introduced a Bug
# Question: "You’ve deployed code, and later realize a recent commit introduced a bug. How do you remove the changes from that commit without losing the rest of the work?"
Answer:
- Use git revert <commit-id>: This command creates a new commit that undoes the changes made in the specified commit, while preserving the rest of your work.
- After reverting, you can push the changes with git push.

# Github WehHooks:
-> A webhook is a way for one system to send real-time data to another system automatically when an event occurs. It works like an automatic notification or trigger that is sent from a source (like a GitHub repository, payment gateway, or CRM) to a destination (such as a server or application) using an HTTP request.
