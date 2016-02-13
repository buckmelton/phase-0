# 1.1 Think About Time Reflection

Which time management and productivity ideas did you learn about?
What is "Time Boxing?" How can you use it in Phase 0?
How do you manage your time currently?
Is your current strategy working? If not, why not?
Can/will you employ any of them? If so, how?
What is your overall plan for Phase 0 time management?

In this assignment I learned about Flow, Timeboxing, Meditation, Tiny Habits, Fixed and Growth Mindsets, and the Pomodoro Technique.  With Timeboxing you prescribe a set amount of time within with you will work on a particular task or goal.  At the end of the time, you stop, and assess how well you did with the task, and whether you completed it or not.  The Pomodoro Technique is a type of Timeboxing, can be used in Phase 0, and in fact I am using it at this moment.  Currently I use the Pomodoro Technique to manage my time and it's working pretty well.  I would also like to use Meditation but I'm not sure I can fit it in.  I really like the idea of Tiny Habits and would like to figure out what Tiny Habit I can start with and where I can insert it after a habit that I already have.  My overall plan for Phase 0 time management is to use the DBC estimate of 25-30 hours per week for Phase 0 and distribute them as 50-60 Pomodoros amongst all the activities listed in the week's modules.  In fact I've already done that for this week.

# 1.2 The Command Line Reflection

What is a shell? What is "bash?"

A shell is a user interface for using the operating system of a computer.  Usually shells are thought of as a command line interface, like in Unix or DOS.  Unix has several flavors of shells, including Bash, Bourne, c-shell, etc.

What was the most challenging for you in going through this material?

It was review for me, the most challenging parts for me to remember are always the redirection operators.

Were you able to successfully use all of the commands?

Yes.

In your opinion, what are the most important commands and arguments to know?

It completely depends on the context of the project you're working on, but typically you always need cd, ls, cat, less, mv, Ctrl-C, and grep

Can you remember what each of the following does of the top of your head? Write what each does.
-pwd

print working directory (i.e. which directory am I in currently?)

-ls

list contents of current directory

-mv

move file (often used to rename file)

-cd

change directory

-../

indicates the directory above your current directory

-touch

create an empty file

-mkdir

make a new directory

-less

display contents of a file, one page at a time

-rmdir

remove (delete) a directory

-rm

remove (delete) a file

-help

Windows version of 'man', get help on a particular command

# 1.4 Forking and Cloning Reflection  

 

If you were going to write instructions for a new person on how to create a new repo, fork a repo, and clone a repo, what would they be? Why would you fork a repository as opposed to create a new one?

1. Create a New Repository
- Log into GitHub.
- From your GitHub account home page, click on the green button labeled '+ New Repository', located towards the right-hand side of the screen.  If you don't see a green button, click on the '+' dropdown menu in the upper right corner of the screen and select 'New Repository'.
- You will be presented with a new page headed "Create a new repository".
- Type in a new name for the repository.
- Choose whether you want the repository to be 'Public' or 'Private'.
- Click the dropdown  menu for 'Add a License' and select 'MIT License'.
- Click the 'Create Repository' button.

2. Fork a repository
- Navigate to the main page of the repository you'd like to fork.
- Click on the 'Fork' button located towards the upper right corner of the screen.

3. Clone a repository
- Navigate to the repo you'd like to clone.
- Find the clone URL towards the middle right of the page.  The clone URL is a URL in a editable box that ends with '.git'.
- Make a copy of the clone URL by either highlighting the entire URL and copying it, or by clicking on the 'Copy to Clipboard' button located to the right of the URL.
- From your Linux command line, navigate to the directory where you would like your local copy of the repository to reside.
- At the Linux command prompt, type 'git clone ' and then paste the URL you copied in the step above.
- Type enter, and the repository will be cloned to your computer.

You would fork a repository if you had no intention of merging the forked repository back into the original repository.  For example, if this was a completely new project that would never be unified with the original project, or if you were creating a sandbox for your own learning purposes.
 

What struggles did you have setting up git and GitHub? What did you learn in the process?

The only struggle I had was when we were asked to delete our local copy and clone it again.  When I used rm -rf to  delete all files, then moved up a level and used rmdir to delete the directory, rmdir said that the directory wasn't empty.  I then tried to use the man command, but the terminal program couldn't find the man command.  I used google to help figure out what to do when rmdir didn't work, and discovered I could use rmdir -rf, which was successful.

I learned that 1) I need to figure out how to get the man command recognized (probably need a change to my PATH variable), and 2) how to use rmdir recursively and with force.


 

