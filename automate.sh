#!/bin/bash

# Colors
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

read -p "Enter the GitHub repository URL: " repo_url

# Check for git repo
if [[ $repo_url == *"git"* ]]; then
    echo -e "${GREEN}The repository URL contains 'git'.${NC}"

    echo -e "${GREEN}Cloning repository...${NC}"
    git clone "$repo_url"
    repo_folder=$(basename "$repo_url" .git)
    cd "$repo_folder"

    echo -e "${GREEN}Opening repository in VSCode...${NC}"
    code .

    # Python Project Check
    if [[ -f "requirements.txt" ]]; then
        echo -e "${GREEN}Python project detected.${NC}"

        echo -e "${GREEN}Creating Python virtual environment...${NC}"
        python -m venv venv

        echo -e "${GREEN}Activating virtual environment...${NC}"
        source venv/bin/activate

        echo -e "${GREEN}Installing Python dependencies...${NC}"
        pip install -r requirements.txt

    # JS Project Check
    elif [[ -f "package.json" ]]; then
        echo -e "${GREEN}Javascript project detected.${NC}"
        echo -e "${GREEN}Installing Node.js dependencies...${NC}"
        npm install

    # Unknown Project
    else
        echo -e "${RED}Unknown project type.${NC}"
    fi

    echo -e "${GREEN}Script execution completed.${NC}"
    sleep 5

# Not a git repo
else
    echo -e "${GREEN}The repository URL does not contain 'git'. Please provide a valid repository URL.${NC}"

    seconds=5
    while [ $seconds -gt 0 ]; do
        echo -e "${RED}Exiting in $seconds seconds...${NC}"
        sleep 1
        seconds=$((seconds - 1))
    done
fi
