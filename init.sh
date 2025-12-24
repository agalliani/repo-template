#!/usr/bin/env bash
# Script di inizializzazione struttura repository "prompt-optimizer"
# Assunzioni: bash, ambiente Unix-like (Linux/macOS), permessi di scrittura

set -euo pipefail

# Funzione per creare file con contenuto se non esiste
create_file_with_content() {
  local file="$1"
  local content="$2"
  if [ ! -f "$file" ]; then
    echo "$content" > "$file"
  fi
}

# 1. Directory principale .github/ e sottocartelle
mkdir -p .github/ISSUE_TEMPLATE

# 2. File di configurazione e template in .github/
create_file_with_content .github/COMMIT_CONVENTION.md "# Convenzioni Commit\n\nDescrivi qui le regole per i commit (Conventional Commits, esempi, ecc)."
create_file_with_content .github/CONTRIBUTING.md "# Linee guida per contribuire\n\nSpiega come contribuire al progetto, aprire PR, segnalare bug, ecc."
create_file_with_content .github/PULL_REQUEST_TEMPLATE.md "# Template Pull Request\n\n- Descrizione\n- Issue correlate\n- Checklist"
create_file_with_content .github/CODEOWNERS "# CODEOWNERS\n* @tuo-username"
create_file_with_content .github/SECURITY.md "# Sicurezza\n\nIndica come segnalare vulnerabilità di sicurezza."
create_file_with_content .github/copilot-instructions.md "# Istruzioni per Copilot/AI\n\nRegole e convenzioni per agenti AI."

# 3. Template issue
create_file_with_content .github/ISSUE_TEMPLATE/bug_report.md "---\nname: Segnalazione Bug\nabout: Crea una segnalazione per un bug\n---\n\n**Descrizione**\n..."
create_file_with_content .github/ISSUE_TEMPLATE/feature_request.md "---\nname: Richiesta Feature\nabout: Suggerisci una nuova funzionalità\n---\n\n**Descrizione**\n..."

# 4. File di root del progetto
create_file_with_content .gitignore ".venv/\nnode_modules/\n__pycache__/\n.DS_Store\n.env\n"
create_file_with_content CHANGELOG.md "# Changelog\n\nTutte le modifiche rilevanti al progetto saranno documentate in questo file."
create_file_with_content LICENSE "MIT License"
create_file_with_content package.json "{\n  \"name\": \"prompt-optimizer\",\n  \"version\": \"0.1.0\"\n}"
create_file_with_content README.md "# prompt-optimizer\n\nRepository per ottimizzazione prompt, automazione e agenti AI."
create_file_with_content jest.config.js "// Configurazione Jest\nmodule.exports = {\n  // ...\n};"
create_file_with_content setupTests.js "// File setup per test React\n// ..."
create_file_with_content pytest.ini "[pytest]\naddopts = -ra\n"
create_file_with_content requirements-dev.txt "# Dipendenze sviluppo Python\npytest\nflake8\n"
create_file_with_content .editorconfig "root = true\n[*]\nend_of_line = lf\ninsert_final_newline = true\n"
create_file_with_content .prettierrc "{\n  \"singleQuote\": true,\n  \"semi\": false\n}"
create_file_with_content .eslintrc.json "{\n  \"extends\": [\"eslint:recommended\"]\n}"
create_file_with_content .flake8 "[flake8]\nmax-line-length = 88\n"

# 5. Memo finale
cat <<EOM
\n[MEMO]\n\nStruttura repository creata.\nChiedi all'agente di customizzare i file sulla base delle esigenze di progetto.\nEOM
