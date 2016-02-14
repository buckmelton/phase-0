How does tracking and adding changes make developers' lives easier?

	By tracking and adding changes, you can know exactly what you changed when, and in case of a problem, you can roll back those changes to any particular point that's been tracked.  In addition, if you are collaborating with other programmers, you can know who is responsible for which changes in case of questions or problems, and you can rollback just the changes from a particular developer.

What is a commit?

	A commit saves a defined set of changes to the code, and marks the codebase with a save point that can be rolled back to.

What are the best practices for commit messages?

	- Human-readable and understandable description of all the changes included in that commit.
	- Use imperative or present tense of verbs, not past tense.
	- Correct grammar and punctuation.

What does the HEAD^ argument mean

	HEAD^ refers to the parent of the current branch.  So if you are working in a feature branch off of master branch, HEAD^ is the master branch.

What are the 3 stages of a git change and how do you move a file from one stage to the other?

	1. If the file doesn't already exist, you create it, for example using 'touch' from the command line. To the existing file, you edit it with the changes you want.
	2. You then add the file to the staging area using 'git add <filename>'
	3. You then commit the file (and anything else you've added to staging) using 'git commit -m "<commit message>"'

Write a handy cheatsheet of the commands you need to commit your changes

	Cheatsheet for commands needed to commit changes:
	- 'touch' to create file
	- sublime to edit file
	- 'git add <filename>' to add file to staging
	- 'git add .' to add all changed files to staging
	- 'git commit -m "<commit message>' to commit changes

What is a pull request and how do you create and merge one?

	A pull request is how you get your changes to your feature branch into the master branch.
	- First you pull the latest remote master to your local repo.
	- Then you merge the local master into your local feature branch.
	- Push your local feature branch to your remote GitHub feature branch.
	- Using the GitHub 'Compare and Pull Request' functionality, create the Pull Request.
	- Once the Pull Request has been issued and discussed and addressed as necessary, click the 'Merge' button at the end of the Pull Request in GitHub
	- Now that the merge is complete, clean things up by first deleting the remote feature branch in GitHub, then pulling the new remote master down to your local repo, then use the command line to delete your local feature branch.

Why are pull requests preferred when working with teams?

	Because they make code reviews super easy, and code reviews are A Good Thing.