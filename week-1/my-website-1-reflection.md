* Paste a link to your [USERNAME].github.io repository.

https://github.com/buckmelton/buckmelton.github.io

* Explain how to create a repository on GitHub and clone the repository to your local computer to a non-technical person.

  Create a new repository on GitHub and clone it to your local computer:

- On GitHub choose "Create New Repository"
- Name the repository
- Make it public or private
- Choose whether to auto-include a README file
- Choose a license (for DBC we've been using MIT License)
- Click "Create"
- Copy the URL for cloning

- On your local computer, navigate to the directory in which you want the repository directory to be created.  To be clear, whatever directory you are in, Git will be creating a subdirectory with the name of the repository, and the files for that repository will be inside the Git-created subdirectory.
- At the command line enter

git clone

then paste the URL after and enter.


* Describe what open source means.

  Open Source means that the plain-text software code is available to be copied, modified, extended, and re-used by anyone, subject to one of several standard Open Source licenses that may place some relatively loose limits on how the code can be used.

* What do you think about Open Source? Does it make you nervous or protective? Does it feel like utopia?

  Open Source is awesome.  But like any structure, it can be used for good or ill, and there are contexts in which its use may be more or less appropriate.  The considerations boil down to: how does the originator encourage value to be ascribed to the software, and does that value accrue to the originator, and if so how, or is the originator OK with the value accruing to the re-users.  Everyone needs to eat and put a roof over their heads, and most of us want to better the world; how can those goals be better balanced through the use of Open Source?

* Assess the importance of using licenses.

  Licenses are extremely important.  It is fair and reasonable to expect that the originator of software can continue to be given credit, and can determine how the software may and may not be used.  These can only be ensured through licenses.

* What concepts were solidified in the challenge? Did you have any "aha" moments? What did you struggle with?

  The entire workflow cycle for git and GitHub was solidified for me.  The terminology was strange and I come from fluent use on 2000's style version control, so while I was familiar with the concepts, it took a few iterations for the new version control worldview of git and GitHub to sink in.

* Did you find any resources on your own that helped you better understand a topic? If so, please list it.

  Yes, I found this git tutorial from Atlassian useful:
  https://www.atlassian.com/git/tutorials/comparing-workflows/feature-branch-workflow