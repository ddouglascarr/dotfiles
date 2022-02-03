#!/bin/bash
set -euo pipefail

# install stuff I need for vim here

echo "--- Install bibtex-ls"

go install github.com/msprev/fzf-bibtex/cmd/bibtex-ls@latest
go install github.com/msprev/fzf-bibtex/cmd/bibtex-markdown@latest
go install github.com/msprev/fzf-bibtex/cmd/bibtex-cite@latest
