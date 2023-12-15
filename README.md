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

Check out the repo to your local disk and run the following in its root directory:

    docker compose up

After all the services are up, start Visual Studio Code, go to Remote Explorer and locate **big-data-teaminterview-devcontainer-1** under the DEV CONTAINERS section
, which, on mouse over, will show an arrow **attach in current window**.
Press it, wait till vscode is done with its magic, and you are all set.

To create a new Python file just go to **Welcome Page** and click **Create New File**,
you then will be able to select **Python file** in the dropdown menu.
If the option isn't there, wait a bit until it shows, as it may take some time to get everything started.

### The Environment
After executing everything above you should now have:
* postgres instance with a database **bdt**, containing a **public** schema, accessible from vscode with **bdt**/**bdt** login/password under **postgres:5432** host/port
* minIO instance containing a single bucket called **big-data-team**, accessible from vscode with an access/secret key **big-data-team**/**big-data-team** under minio:9000. To check out the ui, go to http://localhost:9001
* Microsoft devcontainer for vscode, to which you've just connected. It already has all the Python and Java packages that you need to connect to postgres and minio, as well as **PySpark 3.3.3**. s3 endpoint, **access and secret key are already in Spark defaults**, so you **don't have to specify these** when creating a Spark session


### Good luck with the interview!