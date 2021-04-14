# git-read-tree
# Autogenerated from man page /usr/share/man/man1/git-read-tree.1
complete -c git-read-tree -s m --description 'Perform a merge, not just a read.'
complete -c git-read-tree -l reset --description 'Same as -m, except that unmerged entries are discarded instead of failing.'
complete -c git-read-tree -s u --description 'After a successful merge, update the files in the work tree with the result o…'
complete -c git-read-tree -s i --description 'Usually a merge requires the index file as well as the files in the working t…'
complete -c git-read-tree -s n -l dry-run --description 'Check if the command would error out, without updating the index or the files…'
complete -c git-read-tree -s v --description 'Show the progress of checking files out.'
complete -c git-read-tree -l trivial --description 'Restrict three-way merge by git read-tree to happen only if there is no file-…'
complete -c git-read-tree -l aggressive --description 'Usually a three-way merge by git read-tree resolves the merge for really triv…'
complete -c git-read-tree -l prefix --description 'Keep the current index contents, and read the contents of the named tree-ish …'
complete -c git-read-tree -l exclude-per-directory --description 'When running the command with -u and -m options, the merge result may need to…'
complete -c git-read-tree -l index-output --description 'Instead of writing the results out to $GIT_INDEX_FILE, write the resulting in…'
complete -c git-read-tree -l recurse-submodules --description 'Using --recurse-submodules will update the content of all active submodules a…'
complete -c git-read-tree -l no-sparse-checkout --description 'Disable sparse checkout support even if core. sparseCheckout is true.'
complete -c git-read-tree -l empty --description 'Instead of reading tree object(s) into the index, just empty it.'
complete -c git-read-tree -s q -l quiet --description 'Quiet, suppress feedback messages.'

