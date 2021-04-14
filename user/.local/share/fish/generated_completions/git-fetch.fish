# git-fetch
# Autogenerated from man page /usr/share/man/man1/git-fetch.1
complete -c git-fetch -l all --description 'Fetch all remotes.'
complete -c git-fetch -s a -l append --description 'Append ref names and object names of fetched refs to the existing contents of…'
complete -c git-fetch -l depth --description 'Limit fetching to the specified number of commits from the tip of each remote…'
complete -c git-fetch -l deepen --description 'Similar to --depth, except it specifies the number of commits from the curren…'
complete -c git-fetch -l shallow-since --description 'Deepen or shorten the history of a shallow repository to include all reachabl…'
complete -c git-fetch -l shallow-exclude --description 'Deepen or shorten the history of a shallow repository to exclude commits reac…'
complete -c git-fetch -l unshallow --description 'If the source repository is complete, convert a shallow repository to a compl…'
complete -c git-fetch -l update-shallow --description 'By default when fetching from a shallow repository, git fetch refuses refs th…'
complete -c git-fetch -l negotiation-tip --description 'By default, Git will report, to the server, commits reachable from all local …'
complete -c git-fetch -l dry-run --description 'Show what would be done, without making any changes.'
complete -c git-fetch -l write-fetch-head --description 'Write the list of remote refs fetched in the FETCH_HEAD file directly under $…'
complete -c git-fetch -s f -l force --description 'When git fetch is used with <src>:<dst> refspec it may refuse to update the l…'
complete -c git-fetch -s k -l keep --description 'Keep downloaded pack.'
complete -c git-fetch -l multiple --description 'Allow several <repository> and <group> arguments to be specified.'
complete -c git-fetch -l auto-maintenance -l auto-gc --description 'Run git maintenance run --auto at the end to perform automatic repository mai…'
complete -c git-fetch -l write-commit-graph --description 'Write a commit-graph after fetching.  This overrides the config setting fetch.'
complete -c git-fetch -s p -l prune --description 'Before fetching, remove any remote-tracking references that no longer exist o…'
complete -c git-fetch -s P -l prune-tags --description 'Before fetching, remove any local tags that no longer exist on the remote if …'
complete -c git-fetch -s n -l no-tags --description 'By default, tags that point at objects that are downloaded from the remote re…'
complete -c git-fetch -l refmap --description 'When fetching refs listed on the command line, use the specified refspec (can…'
complete -c git-fetch -s t -l tags --description 'Fetch all tags from the remote (i. e.'
complete -c git-fetch -l recurse-submodules --description 'This option controls if and under what conditions new commits of populated su…'
complete -c git-fetch -s j -l jobs --description 'Number of parallel children to be used for all forms of fetching.'
complete -c git-fetch -l no-recurse-submodules --description 'Disable recursive fetching of submodules (this has the same effect as using t…'
complete -c git-fetch -l set-upstream --description 'If the remote is fetched successfully, add upstream (tracking) reference, use…'
complete -c git-fetch -l submodule-prefix --description 'Prepend <path> to paths printed in informative messages such as "Fetching sub…'
complete -c git-fetch -l recurse-submodules-default --description 'This option is used internally to temporarily provide a non-negative default …'
complete -c git-fetch -s u -l update-head-ok --description 'By default git fetch refuses to update the head which corresponds to the curr…'
complete -c git-fetch -l upload-pack --description 'When given, and the repository to fetch from is handled by git fetch-pack, --…'
complete -c git-fetch -s q -l quiet --description 'Pass --quiet to git-fetch-pack and silence any other internally used git comm…'
complete -c git-fetch -s v -l verbose --description 'Be verbose.'
complete -c git-fetch -l progress --description 'Progress status is reported on the standard error stream by default when it i…'
complete -c git-fetch -s o -l server-option --description 'Transmit the given string to the server when communicating using protocol ver…'
complete -c git-fetch -l show-forced-updates --description 'By default, git checks if a branch is force-updated during fetch.'
complete -c git-fetch -l no-show-forced-updates --description 'By default, git checks if a branch is force-updated during fetch.'
complete -c git-fetch -s 4 -l ipv4 --description 'Use IPv4 addresses only, ignoring IPv6 addresses.'
complete -c git-fetch -s 6 -l ipv6 --description 'Use IPv6 addresses only, ignoring IPv4 addresses.'
complete -c git-fetch -l stdin --description 'Read refspecs, one per line, from stdin in addition to those provided as argu…'
complete -c git-fetch -l no-write-fetch-head --description 'from the command line tells Git not to write the file.  Under.'
complete -c git-fetch -l exec --description 'is passed to the command to specify non-default path for the command run on t…'

