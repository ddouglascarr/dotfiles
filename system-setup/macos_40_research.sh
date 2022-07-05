#!/bin/bash
set -euo pipefail

echo "install bibtex-fzf"
go install github.com/msprev/fzf-bibtex/cmd/bibtex-ls@latest
go install github.com/msprev/fzf-bibtex/cmd/bibtex-markdown@latest
go install github.com/msprev/fzf-bibtex/cmd/bibtex-cite@latest
