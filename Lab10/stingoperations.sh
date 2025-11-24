str="hello"
echo ${#str}          # Length: 5
echo ${str:1:3}       # Substring: ell
echo ${str#he}        # Remove prefix: llo
echo ${str%lo}        # Remove suffix: hel

