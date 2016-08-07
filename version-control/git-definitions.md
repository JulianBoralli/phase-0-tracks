# Git Definitions

**Instructions:** Define each of the following Git concepts.

### What is version control?  Why is it useful?

Version control is a method for managing different versions of files and projects. It's extremely useful to use a **Version Control System (VCS)** to safeguard a current active version of a project and its files, while you concurrently work on other features and versions of the project. When used by multiple members of a project's team, it facilitates the division of labor, and each member can edit specific parts of a program at the same time. Even working at the same file is possible and the VCS can intelligently update and merge the work. If and when conflicts occur, the VCS will give the user a detailed message of the conflict, making it easy to solve it.

The most famous version control system for UNIX based systems is Git. It was developed by Linus Torvalds, the creator of Linux, in 2005 to help on the development of Linux. Today it is widely used by software engineers around the globe.

### What is a branch and why would you use one?

A branch is just a name for a different version of a project. Creating a branch is useful whenever you want to work on a new feature or version of your program. Ideally, you want to preserve the active version of your program. You only incorporate (merge) a new feature to the active version when it is ready.

### What is a commit? What makes a good commit message?

This is a simple image of the Git Flow:
![Git Flow](https://softcover.s3.amazonaws.com/636/learn_enough_git/images/figures/git_status_sequence.png)

On the first step of the cycle, new files that are created or old files modified need to be staged, meaning they are recognized by the version control system. The second step is effectively making the changes take place on version control. This is done by **committing** whatever was staged, always describing the commit command with a clear message of what is being done. A good commit message describes with a few words exactly what is happening, using present tense and an imperative mood. For example: "Initialize Repository" or "Add README.md file".

### What is a merge conflict?

Merge conflicts are rare on git, specially when teams are organized in the way they split their work. Even when two or more members of a team are working on the same file, Git is quite good at understand how to merge all edits. If two members of a team end up editing the same line of code in different ways, a conflict will happen when attempting to merge branches. Git will recognize the conflict and signal where in the code the conflict is, making it easy to solve it by hand.
