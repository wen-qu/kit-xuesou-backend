# git-cvsimport
# Autogenerated from man page /usr/share/man/man1/git-cvsimport.1
complete -c git-cvsimport -s v --description 'Verbosity: let cvsimport report what it is doing.'
complete -c git-cvsimport -s d --description 'The root of the CVS archive.'
complete -c git-cvsimport -s C --description 'The Git repository to import to.'
complete -c git-cvsimport -s r --description 'The Git remote to import this CVS repository into.'
complete -c git-cvsimport -s o --description 'When no remote is specified (via -r) the HEAD branch from CVS is imported to …'
complete -c git-cvsimport -s i --description 'Import-only: don\\(cqt perform a checkout after importing.'
complete -c git-cvsimport -s k --description 'Kill keywords: will extract files with -kk from the CVS archive to avoid nois…'
complete -c git-cvsimport -s u --description 'Convert underscores in tag and branch names to dots.'
complete -c git-cvsimport -s s --description 'Substitute the character "/" in branch names with <subst>.'
complete -c git-cvsimport -s p --description 'Additional options for cvsps.'
complete -c git-cvsimport -s z --description 'Pass the timestamp fuzz factor to cvsps, in seconds.'
complete -c git-cvsimport -s P --description 'Instead of calling cvsps, read the provided cvsps output file.'
complete -c git-cvsimport -s m --description 'Attempt to detect merges based on the commit message.'
complete -c git-cvsimport -s M --description 'Attempt to detect merges based on the commit message with a custom regex.'
complete -c git-cvsimport -s S --description 'Skip paths matching the regex.'
complete -c git-cvsimport -s a --description 'Import all commits, including recent ones.'
complete -c git-cvsimport -s L --description 'Limit the number of commits imported.'
complete -c git-cvsimport -s A --description 'CVS by default uses the Unix username when writing its commit logs.'
complete -c git-cvsimport -s R --description 'Generate a $GIT_DIR/cvs-revisions file containing a mapping from CVS revision…'
complete -c git-cvsimport -s h --description 'Print a short usage message and exit.'
complete -c git-cvsimport -o kk --description 'from the CVS archive to avoid noisy changesets.'

