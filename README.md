# Project Template

The Project Template is a base template used to create a new [nio](n.io) project with the recommended files and file structure.

## How to Use

### Clone the Project Template
  There are two ways to clone the project template. One is using the nio CLI and the other is to clone it to your local machine as you would any other GitHub repository.
#### Using the nio CLI

  If you have [nio installed](docs.n.io) on your machine, you can use the CLI to create a new project directory.

  ```
    nio new <project_name>
  ```

#### Using git

To clone the project template using git
1. clone the template and initialize the submodules which contain the blocks.
    ```
    git clone https://github.com/nioinnovation/project_template.git <project_name>
    cd <project_name>
    git submodule update --init --recursive
    ```
1. Remove the tracking link to the original template repository and reset ownership to yourself
    ```
    git remote remove origin
    git commit --amend --reset-author -m "Initial Commit"
    ```
To push your project to GitHub (or other remote repository)

1. Create a new online repository for your project and then copy the **Clone or download** URL.
1. Back in your local repository, from the command line, link the remote tracking information to the new repository using the URL you copied.
    ```
    git remote add origin <new_project_repo_url>
    ```
1. Push to a branch (usually `master`).
    ```
    git push --set-upstream origin master
    ```

### File Reference

**blocks**<br>Block types, as submodules, are kept in this folder. The project template comes with a few of the most commonly used block types. Block types from the block library or block types you create can be added to this directory.

**etc**
<br>Project configurations and scripts. For example, the script to [encrypt zmq communications](#encrypting-zmq-communications).

**service_tests**<br>A submodule for service tests that includes `NioServiceTestCase` and other tools for service testing.

**tests**<br>A folder for your tests with an example set up for a service test.

**Dockerfile**<br>A script to create a docker image of the project and ease deployment.

**docker-compose.yml**<br>A configuration file used by docker-compose to document and configure the application’s dependencies.

**nio.conf**<br>A file that contains the nio project configuration. Default values are shown.

**nio.env**<br>A file containing environment variables for the project. If this file contains secrets, you will want to add it to the `.gitignore`.

## Encrypting ZMQ Communications

The `generate_certificates.py` script will generate public and private
certificates under the `public_keys` and `private_keys` folders in the current
directory. Use the argument -t to specify a different target root directory.

To launch the script, navigate to the `etc` directory, and run

```
python scripts/generate_certificates.py
```
