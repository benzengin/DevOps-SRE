<pre>What is (g)it?

Git is an Open Source Dsitributed Version Control System.

- Control System: This basically means that Git is a content tracker. So Git can be used to store content -- it is most
ly used to store code due to the other features it provides.

- Version Control System: The code which is stored in Git keeps changing as more code is added. Also, many developers c
an add code in parallel. So Version Control System helps in handling this by maintaining a history of what changes have
 happened.
- Distributed Version Control System: Git has a remote repository which is stored in a server and a local repository wh
ich is stored in the computer of each developer. This means that the code is not just stored in a central server, but f
ull copy of the code is present in all the developers&apos; computers.

For you in particular that means you have a local folder including your code. This is where you develop, write your cod
e, config and perform your local testing. While a git client is running on your local computer, you have a git project 
for your development project located in said folder. Git has a staging area, which you can use to mark new files to add
ed to git version control.

Once your project has hit any logical milestone like &quot;frontend done&quot;, or &quot;automated tests created&quot; or &quot;feature xyz adde
d&quot; you can commit it to your local git repository to be tracked as a specific version including a useful comment. Whene
ver you might want to get back back to a specific state or you want to wipe all local changes because you maybe screwed
 something up, you can also go back to any of the commits you made. Up to this point, everything is only present on you
r local computer.

If you now want to share your development progress with other developers for collaboration or for e.g. want to share it
 with your deployment pipeline, you have to push your committed state to the Remote Repository, which is Gitlab in our 
case. Now other developers can clone the repository from gitlab. Whenever there is a new state (new commits) uploaded (
pushed) to the Remote Repository (Gitlab) you can fetch the data. Fetching updates the information about the official s
tate on the remote repository in your local git repository, but will NOT change the files in your local folder yet. To 
sync your local files with the actual state in the git repository you can check it out. By using git pull, you basicall
y combine fetch and checkout with each other in one command and directly get the newest state to your local folder.
</pre>
