# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
Version control keeps a record of all of the changes made made to a file, or multiple files. Version control essentially creates a timeline of all the changes made. It also allows you to merge together several revisions made over time to the original file. Past versions of the file can be recalled. A repository is a folder where these files are kept in order to be version controlled. Specifically, Git is software that allows you to turn a folder into a version controlled folder. 

* What is a branch and why would you use one?
 When you create a repository a master branch is automatically created. The master branch acts as the timeline of your commits. You can easily create new branches off the master branch and switch between these to work on different files or different versions of a file where you are making changes. A branch allows you to create a copy of your file that you can edit and modify before merging it back to the master branch. 

* What is a commit? What makes a good commit message?
A commit is a save point in Git that records the changes you have made to a file. Git does not automatically save versions of your file, so it is important to commit frequently when making changes. A good commit message should be specific about what changes were made. You want to be able to easily locate when/where a specific modification was made in the timeline of the file.   

* What is a merge conflict?
Merge conflict can occur when multiple people are working on the same file. If two people make different changes to a specific part of a file, or one person completely deletes a file someone else edited, there will be an issue when trying to merge all these different versions back together. When this is the case, Git will tell you that you have unmerged paths. 