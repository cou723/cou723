#!/bin/bash

# JSONファイルのパスを指定
input_file="./keybindings.json"
output_file="./keybindings_modified.json"

# sedを使ってctrlをcmdに置き換え
sed 's/"ctrl/"cmd/g' "$input_file" | sed '$d' > "$output_file"
echo '    ,{"key": "cmd+right", "command": "workbench.action.navigateForward"}' >> "$output_file"
echo '    ,{"key": "cmd+left", "command": "workbench.action.navigateBack"}' >> "$output_file"
echo ']' >> "$output_file"

echo "変換が完了しました。出力ファイル: $output_file"