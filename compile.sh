#!/bin/bash

# Compile LaTeX Beamer presentation with XeLaTeX
# Usage: ./compile.sh

echo "Compiling with XeLaTeX..."

# Simple fix: compile directly without output directory, then move files
xelatex.exe -interaction=nonstopmode main.tex

if [ $? -eq 0 ]; then
    echo "✅ Success! Moving files to out/ directory..."
    
    # Create out directory if it doesn't exist
    mkdir -p out
    
    # Move all generated files to out directory
    for ext in aux log nav out snm toc pdf; do
        if [ -f "main.$ext" ]; then
            mv "main.$ext" "out/"
        fi
    done
    
    echo "✅ PDF created at out/main.pdf"
    ls -la out/main.pdf 2>/dev/null && echo "File confirmed!" || echo "❌ PDF not found"
else
    echo "❌ XeLaTeX compilation failed"
fi
