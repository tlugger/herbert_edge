# Project Template

The Project Template is a base template used to create a new nio project with the recommended files and file structure.

## How to Use

  Clone this project template using the nio command line interface (CLI) or Git.

### Clone Using the nio CLI

You can create a new project directory with the nio-cli

  ```
    pip3 install nio-cli
    nio new <new_project_name>
  ```

### Clone Using Git

To clone the project template using Git
1. Create a shallow clone of the template.
    ```
    git clone --depth=1 https://github.com/niolabs/project_template.git <new_project_name>
    ```
1. Navigate to your new project directory.
    ```
    cd <new_project_name>
    ```
1. Initialize the submodules containing the blocks and the service test tools.
    ```
    git submodule update --init --recursive
    ```
1. Remove the tracking link to the original template repository.
    ```
    git remote remove origin
    ```
1. Reset ownership to yourself.
    ```
    git commit --amend --reset-author -m "Initial Commit"
    ```
To push your project to GitHub (or another remote repository)

1. Create a new online repository for your project.
1. Copy the unique URL for your new repository to your clipboard.
1. In your local repository, from the command line, add the remote tracking information for the new repository.
    ```
    git remote add origin <new_project_repo_URL>
    ```
1. Push to a branch (usually `master`).
    ```
    git push --set-upstream origin master
    ```

## File Reference

**blocks**<br>A directory that contains block types, as submodules. The project template comes with a few of the most commonly used block types. Block types can be added and removed. Additional block types can be found in the block library and added through the System Designer, or, you can add your own custom block types here.

**etc**
<br>A folder containing project configurations and scripts.

**service_tests**<br>A submodule for service tests that includes `NioServiceTestCase` and other tools for service testing.

**tests**<br>A folder for your tests with an example set up for a service test.

**Dockerfile**<br>An optional script to create a Docker image of the project. Docker can be used as a tool in deployments.

**docker-compose.yml**<br>A file optionally used in conjunction with Docker to configure your application so that all its dependencies can be started with a single command.

**nio.conf**<br>A file that contains the nio project configuration. Default values are shown. If this file contains secrets, you will want to add it to the `.gitignore` file.
