#!/bin/bash

# Compile LaTeX Beamer presentation with LuaLaTeX
# Usage: ./compile.sh

echo "Compiling with LuaLaTeX..."

# Use LuaLaTeX with output directory - this works perfectly!
lualatex.exe -interaction=nonstopmode -output-directory=out main.tex

if [ $? -eq 0 ]; then
    echo "✅ Success! PDF created at out/main.pdf"
    ls -la out/main.pdf 2>/dev/null && echo "File confirmed!" || echo "❌ PDF not found"
else
    echo "❌ LuaLaTeX compilation failed"
fi
