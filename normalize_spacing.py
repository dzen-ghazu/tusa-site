# This piece of code is used to normalize spacing in markdown files. 
# It removes excessive blank lines and ensures that lists are formatted correctly.

from pathlib import Path
import re

root = Path(r'c:\Users\dongyig\tusa-site\docs\club-admin-guide')

for path in root.rglob('*.md'):
    text = path.read_text(encoding='utf-8')
    original = text
    text = re.sub(r'(?:\r?\n){3,}', '\n\n', text)
    text = re.sub(r'\n\n(?=(?:[-*+]|\d+\.)\s)', '\n', text)
    if text != original:
        path.write_text(text, encoding='utf-8')
        print(path)
