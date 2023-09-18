# ~/.bashrc: executed by bash(1) for non-login shells.
# Last modified by Kevin Cole <kjcole@gri.gallaudet.edu> 2020.07.27
#
# 2005.11.22 KJC - Added my favorites
# 2005.11.26 KJC - Moved them out of .bashrc as suggested by comments
# 2014.05.31 KJC - Forcing myself to use Python 3...
# 2014.06.15 KJC - Make xclip use correct clipboard for cut and paste
# 2014.06.23 KJC - Added ";" and "//" comment delimiters to decomment
# 2014.07.12 KJC - Use the PEP8 for Python 3
# 2014.07.12 KJC - nl should number blank lines too
# 2014.07.18 KJC - expletives for unprintable characters
# 2014.09.15 KJC - Force tidy to use my config file
# 2014.09.15 KJC - Ignore whitespace changes when doing "git diff"
# 2015.05.17 KJC - Added "describe": a crude equivalent to "rpm -qi"
# 2015.11.10 KJC - Added a "git ls" to list tracked files.
# 2015.12.02 KJC - Update all pip's
# 2016.07.10 KJC - Exterminate! Exterminate! Replace weird with "\"
# 2016.11.14 KJC - Added command-line ANSI weather
# 2018.01.16 KJC - Switching to bpython... for now
# 2018.06.01 KJC - Switching away from bpython... for now
# 2019.05.30 KJC - Use universal patch and color for diff
# 2019.08.12 KJC - Force color=always on diff for pipes. May screw patch files...
# 2020.06.14 KJC - Make pip default to userland space.
#

# Decomment files
#
alias decomment='egrep -v "^[[:space:]]*((#|;|//).*)?$" '

# Find unprintables (control characters and DEL), and expletives
# (anything outside ASCII alphanumeric and punctuation).
#
alias expletives='grep --color="auto" -P -n "[\x80-\xFF]" '
alias unprintable='grep --color="auto" -P -n "[\x00-\x1E]"'
alias expletives='grep  --color="auto" -P -n "[^\x00-\x7E]" '

# 2016.07.10 KJC - Exterminate! Exterminate! Replace weird with "\"
#
alias exterminate='tr -c "[:print:]\t\r\n" "\\\\" '

# Mount Microsoft Windows shared directories
#
alias NT='smbclient \\\\pchm4e\\kjcole$ -U Kevin.Cole'
alias webspace='smbclient -W GALLAUDET -U kevin.cole //personal.gallaudet.edu/kevin.cole'
alias art290='smbclient -W GALLAUDET -U kevin.cole //nas4.gallaudet.edu/kevin.cole'
alias hdrive='smbclient //NAS/Home -U kevin.cole'
alias gradschool='smbclient //gradschool2/Projects -U kevin.cole'

# Sane defaults for nano, nl, python, pip, pep8 and xclip
# 2014.06.15 KJC - Make xclip use correct clipboard for cut and paste
# 2014.07.12 KJC - nl should number blank lines too
# 2014.07.12 KJC - Use the PEP8 for Python 3
# 2020.06.14 KJC - Make pip default to userland space.
#
alias nano='nano -bkw '
alias nl='nl -ba '
alias xclip='xclip -selection clipboard '

#alias python='python3'
#alias ipython='ipython3'
#alias pip='pip3'
#alias pep8='python3 /usr/lib/python3/dist-packages/pep8.py '
alias pep8='/usr/bin/pycodestyle '
alias pippin='pip install --user '

# Cross-platform newline conversions
#
alias dos2unix='perl -p -i -e "s|\r\n|\n|g;" '
alias unix2dos='perl -p -i -e "s|\n|\r\n|g;" '
alias mac2unix='perl -p -i -e "s|\r|\n|g;" '
alias unix2mac='perl -p -i -e "s|\n|\r|g;" '
alias dos2mac='perl  -p -i -e "s|\r\n|\r|g;" '
alias mac2dos='perl  -p -i -e "s|\r|\r\n|g;" '

# Miscellaneous
#
alias rot13='tr A-Za-z N-ZA-Mn-za-m'
alias finddup='ls -R | sort | uniq -c | grep -v "^[[:space:]]*1[[:space:]]"'
alias jabref='java -jar ~/bin/JabRef-2.2.jar'

# 2014.09.15 KJC - Force tidy to use my config file
#
alias tidy='tidy -config ~/.tidyrc '

# 2014.09.15 KJC - Ignore whitespace changes when doing "git diff"
#
alias gitdiff='git diff -b -w --ignore-blank-lines '

# 2015.06.06 KJC - git deep log with full diffs
#
alias deeplog='git log --reverse --full-diff -p .'

# 2015.05.17 KJC - Added "describe": a crude equivalent to "rpm -qi"
#
alias describe="dpkg-query -W \
        -f='\${Package} \${Version}\n\n\${Description}\n\n' "

# 2015.11.10 KJC - Added a "git ls" to list tracked files.
#
alias gitls='git ls-tree -r master --name-only'

# 2015.12.02 KJC - Update all pip's
#
alias pupdate='pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U'

# 2016.11.14 KJC - Added command-line ANSI weather
#
alias weather='ansiweather -l "Washington, DC" -u imperial '

# 2019.05.30 KJC - Use universal patch and color for diff
#
alias diff='diff -u --color=always '

# 2018.01.16 KJC - Switching to bpython... for now
# 2018.06.01 KJC - Switching away from bpython... for now
#
#alias python="bpython"
#alias python3="bpython3"

# 2018.10.12 KJC - Reformat (pretty-print) JSON
alias pp='python3 -mjson.tool'
