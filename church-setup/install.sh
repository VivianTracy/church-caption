#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Church Caption setup"
echo "Choose your streaming computer OS:"
echo "  1) Mac"
echo "  2) Windows"
echo
read -r -p "Enter 1 or 2: " choice

case "$choice" in
  1)
    exec "$SCRIPT_DIR/install-mac.sh"
    ;;
  2)
    echo
    echo "On Windows, prefer double-clicking install-windows.cmd,"
    echo "or in PowerShell:"
    echo "  cd church-setup"
    echo "  .\\install-windows.cmd"
    echo
    echo "In Git Bash, use forward slashes:"
    echo "  powershell -ExecutionPolicy Bypass -File ./install-windows.ps1"
    echo
    echo "Do not pass the script path to Set-ExecutionPolicy."
    echo "Do not use .\\ paths inside Git Bash."
    ;;
  *)
    echo "Invalid choice."
    exit 1
    ;;
esac
