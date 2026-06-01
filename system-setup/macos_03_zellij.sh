#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
repo_dir="$(cd "${script_dir}/.." && pwd)"
zellij_config_dir="${HOME}/.config/zellij"
zellij_layout_dir="${zellij_config_dir}/layouts"
iterm_profile_dir="${HOME}/Library/Application Support/iTerm2/DynamicProfiles"
iterm_profile_file="${iterm_profile_dir}/zellij-macos.json"

brew install zellij

mkdir -p "${zellij_layout_dir}" "${iterm_profile_dir}"

ln -sfn "${repo_dir}/zellij.macos.conf" "${zellij_config_dir}/config.kdl"
ln -sfn "${repo_dir}/zellij.macos.layout.kdl" "${zellij_layout_dir}/default.kdl"

cat > "${iterm_profile_file}" <<'JSON'
{
  "Profiles": [
    {
      "Name": "zellij-macos",
      "Guid": "dotfiles-zellij-macos",
      "Command": "zellij --config ~/.config/zellij/config.kdl --layout ~/.config/zellij/layouts/default.kdl",
      "Keyboard Map": {
        "0x62-0x100000": { "Action": 10, "Text": "b" },
        "0x65-0x100000": { "Action": 10, "Text": "e" },
        "0x66-0x100000": { "Action": 10, "Text": "f" },
        "0x68-0x100000": { "Action": 10, "Text": "h" },
        "0x6a-0x100000": { "Action": 10, "Text": "j" },
        "0x6b-0x100000": { "Action": 10, "Text": "k" },
        "0x6c-0x100000": { "Action": 10, "Text": "l" },
        "0x30-0x100000": { "Action": 10, "Text": "0" },
        "0x31-0x100000": { "Action": 10, "Text": "1" },
        "0x32-0x100000": { "Action": 10, "Text": "2" },
        "0x33-0x100000": { "Action": 10, "Text": "3" },
        "0x34-0x100000": { "Action": 10, "Text": "4" },
        "0x35-0x100000": { "Action": 10, "Text": "5" },
        "0x36-0x100000": { "Action": 10, "Text": "6" },
        "0x37-0x100000": { "Action": 10, "Text": "7" },
        "0x38-0x100000": { "Action": 10, "Text": "8" },
        "0x39-0x100000": { "Action": 10, "Text": "9" },
        "0x71-0x100000": { "Action": 10, "Text": "q" },
        "0x72-0x100000": { "Action": 10, "Text": "r" },
        "0x73-0x100000": { "Action": 10, "Text": "s" },
        "0x76-0x100000": { "Action": 10, "Text": "v" },
        "0xd-0x100000": { "Action": 10, "Text": "\r" },

        "0x48-0x120000": { "Action": 10, "Text": "H" },
        "0x4a-0x120000": { "Action": 10, "Text": "J" },
        "0x4b-0x120000": { "Action": 10, "Text": "K" },
        "0x4c-0x120000": { "Action": 10, "Text": "L" },
        "0x68-0x120000": { "Action": 10, "Text": "H" },
        "0x6a-0x120000": { "Action": 10, "Text": "J" },
        "0x6b-0x120000": { "Action": 10, "Text": "K" },
        "0x6c-0x120000": { "Action": 10, "Text": "L" }
      }
    }
  ]
}
JSON

echo "${zellij_config_dir}/config.kdl"
echo "${zellij_layout_dir}/default.kdl"
echo "${iterm_profile_file}"
