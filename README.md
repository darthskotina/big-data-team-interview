Welcome to the team's live coding!

To ease the typical pain of configuring all the necessary components for the dev environment, 
I've already prepared a simple infrastructure for you to work with.

First, you have to have the following already in your system:
git
docker
docker compose
Visual Studio Code version 1.85.0 or later, with devcontainers extension installed (usually goes by default)

Most modern operating systems will suffice- this has been tested under Mac OS, but should also work 
just fine under Linux or Windows WSL.

Check out the repo to your local disk and run
docker compose up

After all the services are up, start Visual Studio Code, go to Remote Explorer and under DEV CONTAINERS section
locate big-data-teaminterview-devcontainer-1, which, on mouse cursor, will show an arrow 'attach in current window'.
Press it, wait till vscode is done with its magic, and you are all set.