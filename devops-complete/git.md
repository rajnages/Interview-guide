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
