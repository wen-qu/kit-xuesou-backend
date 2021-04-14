# git-annotate
# Autogenerated from man page /usr/share/man/man1/git-annotate.1
complete -c git-annotate -s b --description 'Show blank SHA-1 for boundary commits.'
complete -c git-annotate -l root --description 'Do not treat root commits as boundaries.'
complete -c git-annotate -l show-stats --description 'Include additional statistics at the end of blame output.'
complete -c git-annotate -s L -s L --description 'Annotate only the line range given by <start>,<end>, or by the function name …'
complete -c git-annotate -s l --description 'Show long rev (Default: off).'
complete -c git-annotate -s t --description 'Show raw timestamp (Default: off).'
complete -c git-annotate -s S --description 'Use revisions from revs-file instead of calling git-rev-list(1).'
complete -c git-annotate -l reverse --description 'Walk history forward instead of backward.'
complete -c git-annotate -l first-parent --description 'Follow only the first parent commit upon seeing a merge commit.'
complete -c git-annotate -s p -l porcelain --description 'Show in a format designed for machine consumption.'
complete -c git-annotate -l line-porcelain --description 'Show the porcelain format, but output commit information for each line, not j…'
complete -c git-annotate -l incremental --description 'Show the result incrementally in a format designed for machine consumption.'
complete -c git-annotate -l encoding --description 'Specifies the encoding used to output author names and commit summaries.'
complete -c git-annotate -l contents --description 'When <rev> is not specified, the command annotates the changes starting backw…'
complete -c git-annotate -l date --description 'Specifies the format used to output dates.'
complete -c git-annotate -l progress --description 'Progress status is reported on the standard error stream by default when it i…'
complete -c git-annotate -s M --description 'Detect moved or copied lines within a file.'
complete -c git-annotate -s C --description 'In addition to -M, detect lines moved or copied from other files that were mo…'
complete -c git-annotate -l ignore-rev --description 'Ignore changes made by the revision when assigning blame, as if the change ne…'
complete -c git-annotate -l ignore-revs-file --description 'Ignore revisions listed in file, which must be in the same format as an fsck.'
complete -c git-annotate -s h --description 'Show help message.'

