#!/usr/bin/env bash
# Repository structure initialization script "prompt-optimizer"
# Assumptions: bash, Unix-like environment (Linux/macOS), write permissions

set -euo pipefail

# Function to create file with content if it doesn't exist
create_file_with_content() {
  local file="$1"
  local content="$2"
  if [ ! -f "$file" ]; then
    echo "$content" > "$file"
  fi
}

# 1. Main .github/ directory and subdirectories
mkdir -p .github/ISSUE_TEMPLATE

# 2. Configuration files and templates in .github/
create_file_with_content .github/COMMIT_CONVENTION.md "# Commit Conventions\n\nDescribe here the rules for commits (Conventional Commits, examples, etc.)."
create_file_with_content .github/CONTRIBUTING.md "# Contributing Guidelines\n\nExplain how to contribute to the project, open PRs, report bugs, etc."
create_file_with_content .github/PULL_REQUEST_TEMPLATE.md "# Pull Request Template\n\n- Description\n- Related issues\n- Checklist"
create_file_with_content .github/CODEOWNERS "# CODEOWNERS\n* @your-username"
create_file_with_content .github/SECURITY.md "# Security\n\nIndicate how to report security vulnerabilities."
create_file_with_content .github/copilot-instructions.md "# Instructions for Copilot/AI\n\nRules and conventions for AI agents."

# 3. Issue templates
create_file_with_content .github/ISSUE_TEMPLATE/bug_report.md "---\nname: Bug Report\nabout: Create a bug report\n---\n\n**Description**\n..."
create_file_with_content .github/ISSUE_TEMPLATE/feature_request.md "---\nname: Feature Request\nabout: Suggest a new feature\n---\n\n**Description**\n..."

# 4. Project root files
create_file_with_content .gitignore ".venv/\nnode_modules/\n__pycache__/\n.DS_Store\n.env\n"
create_file_with_content CHANGELOG.md "# Changelog\n\nAll notable changes to this project will be documented in this file."
create_file_with_content LICENSE "MIT License"
create_file_with_content package.json "{\n  \"name\": \"prompt-optimizer\",\n  \"version\": \"0.1.0\"\n}"
create_file_with_content README.md "# prompt-optimizer\n\nRepository for prompt optimization, automation and AI agents."
create_file_with_content jest.config.js "// Jest configuration\nmodule.exports = {\n  // ...\n};"
create_file_with_content setupTests.js "// Setup file for React tests\n// ..."
create_file_with_content pytest.ini "[pytest]\naddopts = -ra\n"
create_file_with_content requirements-dev.txt "# Python development dependencies\npytest\nflake8\n"
create_file_with_content .editorconfig "root = true\n[*]\nend_of_line = lf\ninsert_final_newline = true\n"
create_file_with_content .prettierrc "{\n  \"singleQuote\": true,\n  \"semi\": false\n}"
create_file_with_content .eslintrc.json "{\n  \"extends\": [\"eslint:recommended\"]\n}"
create_file_with_content .flake8 "[flake8]\nmax-line-length = 88\n"

# 5. Final memo
cat <<EOM
[MEMO]

Repository structure created.
Ask the agent to customize files based on project needs.
EOM
