# Git Repository Creator

This repository contains Windows and Linux batch scripts that automates the process of creating a new GitHub repository, initializing a local Git repository, and pushing the initial commit to the remote repository.

## Prerequisites

Before running the script, make sure you have the following:

- Git installed on your system
- A GitHub personal access token (with appropriate permissions) stored in the `GITHUB_TOKEN` environment variable

## Usage

1. Open a command prompt, PowerShell window, or terminal.
2. Navigate to the directory where you want to create the new repository.
3. Run the batch script.

The script will perform the following actions:

1. Determine the name of the current directory and use it as the repository name.
2. Send a POST request to the GitHub API to create a new remote repository with the determined name.
3. Create a `README.md` file and a `.gitignore` file with `node_modules` and `.env` entries.
4. Initialize a local Git repository.
5. Add all files to the Git staging area.
6. Commit the changes with the message "first commit".
7. Remove the existing remote origin (if any).
8. Add the newly created GitHub repository as the remote origin.
9. Push the initial commit to the remote repository.

## Customization

If you want to modify the behavior of the script, you can update the following variables at the beginning of the script:

- `USERNAME`: Your GitHub username (default: `EduardoPetrini`).
- `token`: Your GitHub personal access token (default: value of the `GITHUB_TOKEN` environment variable).

## Notes

- The script assumes that you have the `curl` command available on your system.
- Make sure to replace the placeholder values (e.g., `%GITHUB_TOKEN%`) with the appropriate values for your environment.
- The script creates a `.gitignore` file with `node_modules` and `.env` entries, which are commonly used in Node.js projects. You can modify or remove these entries as per your requirements.

## License

This project is licensed under the [MIT License](LICENSE).
