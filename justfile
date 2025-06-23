all: format

format:
    bunx prettier --print-width 120 --tab-width 4 --prose-wrap always --write ./*.md
