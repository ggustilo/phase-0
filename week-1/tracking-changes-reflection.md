##1.4 Tracking Changes

Phase 0, Dev Bootcamp
U1.W1: Tracking Changes Reflections

###Prompt:

How does tracking and adding changes make developers' lives easier?
What is a commit?
What are the best practices for commit messages?
What does the HEAD^ argument mean?
What are the 3 stages of a git change and how do you move a file from one stage to the other?
Write a handy cheatsheet of the commands you need to commit your changes?
What is a pull request and how do you create and merge one?
Why are pull requests preferred when working with teams?
Go through the git workflow you just established and add your reflection to the file. (If you are creating a video reflection, add the video link to your reflection file.)
Add your changes, commit them, and make a pull request to your repository.

###Reflection:

The ability to see exactly how your project has progressed and morphed into its present state, and being able to see code/project additions and their effects (and even revert back to before them) has many benefits.  First, you never have to worry about accidentally messing something up or losing a bunch of work; second, if you ever need to go back to a previous state (say a feature isn't working or is outdated) you can; and third, you can see the specific contributions from everyone on the team, and you know who to ask if you're confused about something.

A commit is basically a saved version of a project.  Whenever you commit, you are saying, 'Take all these little modifications that I've added to the stage and save them into a new version of this project, but keep the old version too.'  Each commit should also have documentation (the message) of what exactly it accomplishes or changes from the previous version.  There are best practices associated with writing commit message such as: a) keep your line length readable - don't go trailing off into horizontal eternity; b) keep your verbs in the imperative present tense so that it is very clear what each commit does; remember, your commit is not the only one contributing to a branch and might not be included in the master; c) keep the message short, concise, and with clear titles.

HEAD is the current commit that you are working towards.  HEAD^ is the last commit, and HEAD-n is the nth commit back.

The three main stages of a git change are: add, commit, push.  When you add in git, you are adding the recent code modifications to the staging environment, in preparation for a commit.  When you commit, you are saving a new version of the project, and all the added changes are included in that version.  When you push, you are pushing your local copy into your remote repository.  If you want to check where you are in this process, you can look at your 'git status'.

A pull request is a notification to other team members that you have recently pushed some code and that it is ready to be tested, reviewed and eventually merged into the master branch.  You create a pull request by logging into your github profile, setting up the master (or previous version) and new commit for comparison, and clicking on the pull request button.  Once the two versions have been compared and approved, you can merge them by pushing the merge button.  Pull requests are preferred when working with teams because it creates a review process for new code before it is merged with working code.  Note: 'git pull' means update my local copy with any changes that have been made upstream, so I can be sure I'm working on the most recent version - a good habit to get into before you start working on a branch.