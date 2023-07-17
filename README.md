# GitHub Repo Setup Script

This script is designed to streamline the setup process for cloning and setting up repositories from GitHub. It automates the following steps:

- Cloning the repository
- Opening the repository in VSCode
- Checking the project type (Python, Node, React, or any other Javascript Library )
- Setting up the appropriate environment
  - For Python projects:
    - Creating a Python virtual environment (`venv`)
    - Installing Python dependencies from `requirements.txt`
  - For js or ts projects:
    - Installing Node.js dependencies using `npm install`

## Prerequisites

Make sure you have the following tools and software installed on your system:

- Git
- VSCode (or your preferred text editor)
- Python (for Python projects)
- Node.js and npm (for Node.js projects)

## Usage

1. Clone this repository or download the `automate.sh` script.

2. Open your terminal and navigate to the location of the `automate.sh` script.

3. Run the script by executing the following command:

   ```bash
   ./automate.sh
   ```

## Authors

- [@10cyrilc](https://www.github.com/10cyrilc)
