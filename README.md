# Welcome to the team's live coding!

To ease the typical pain of configuring all the necessary components for the dev environment, 
I've already prepared a simple infrastructure for you to work with.

### First, you have to have the following already in your system:
* **git**
* **docker** (has been tested on 24.0.6)
* **docker compose** (has been tested on v2.23.0)
* **Visual Studio Code** version 1.85.0 or later, with devcontainers extension installed (usually goes by default)

Any modern operating systems will suffice- this has been tested under Mac OS, but should also work 
just fine under Linux or Windows WSL, as long as your CPU architecture is aarch64 or x86_64.

Check out the repo to your local disk and run

    docker compose up

After all the services are up, start Visual Studio Code, go to Remote Explorer and under DEV CONTAINERS section
locate **big-data-teaminterview-devcontainer-1**, which, on mouse cursor, will show an arrow **attach in current window**.
Press it, wait till vscode is done with its magic, and you are all set.

To create a new Python file just go to **Welcome Page** and click **Create New File**,
you then will be able to select **Python file** in the dropdown menu.
If the option isn't there, wait a bit until it shows, as it may take some time to get everything started.

### Good luck with the interview!