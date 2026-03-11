all: format

format:
    bunx prettier --log-level error --print-width 120 --tab-width 4 --prose-wrap always --write ./*.md
