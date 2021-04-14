# myisamchk
# Autogenerated from man page /usr/share/man/man1/myisamchk.1.gz
complete -c myisamchk -l help --description '.'
complete -c myisamchk -s '?' --description 'Display a help message and exit.  Options are grouped by type of operation.'
complete -c myisamchk -l HELP --description '.'
complete -c myisamchk -s H --description 'Display a help message and exit.  Options are presented in a single list.'
complete -c myisamchk -l debug --description '.'
complete -c myisamchk -s '#' --description 'Write a debugging log.  A typical debug_options string is d:t:o,file_name.'
complete -c myisamchk -l defaults-extra-file --description 'Read this option file after the global option file but (on Unix) before the u…'
complete -c myisamchk -l defaults-file --description 'Use only the given option file.'
complete -c myisamchk -l defaults-group-suffix --description 'Read not only the usual option groups, but also groups with the usual names a…'
complete -c myisamchk -l no-defaults --description 'Do not read any option files.'
complete -c myisamchk -l print-defaults --description 'Print the program name and all options that it gets from option files.'
complete -c myisamchk -l silent --description '.'
complete -c myisamchk -s s --description 'Silent mode.  Write output only when errors occur.  You can use.'
complete -c myisamchk -l verbose --description '.'
complete -c myisamchk -s v --description 'Verbose mode.  Print more information about what the program does.'
complete -c myisamchk -s d --description 'and.'
complete -c myisamchk -s e --description '.'
complete -c myisamchk -o vvv --description 'oc o 2. 3.'
complete -c myisamchk -l version --description '.'
complete -c myisamchk -s V --description 'Display version information and exit.  oc o 2. 3.'
complete -c myisamchk -l wait --description '.'
complete -c myisamchk -s w --description 'Instead of terminating with an error if the table is locked, wait until the t…'
complete -c myisamchk -l var_name --description 'syntax: T{ Variable T}:T{ Default Value T} T{ decode_bits T}:T{ 9 T} T{ ft_ma…'
complete -c myisamchk -l recover --description 'sort_buffer_size is a deprecated synonym for myisam_sort_buffer_size.'
complete -c myisamchk -l extend-check --description 'or when the keys are repaired by inserting keys row by row into the table (li…'
complete -c myisamchk -l safe-recover --description 'oc o 2. 3.'
complete -c myisamchk -l sort-recover --description 'option.'
complete -c myisamchk -l analyze --description 'option is given.  It acts like the myisam_stats_method system variable.'
complete -c myisamchk -l check --description '.'
complete -c myisamchk -s c --description 'Check the table for errors.'
complete -c myisamchk -l check-only-changed --description '.'
complete -c myisamchk -s C --description 'Check only tables that have changed since the last check.  oc o 2. 3.'
complete -c myisamchk -l fast --description '.'
complete -c myisamchk -s F --description 'Check only tables that havent been closed properly.  oc o 2. 3.'
complete -c myisamchk -l force --description '.'
complete -c myisamchk -s f --description 'Do a repair operation automatically if myisamchk finds any errors in the tabl…'
complete -c myisamchk -s r --description 'option.  oc o 2. 3.'
complete -c myisamchk -l information --description '.'
complete -c myisamchk -s i --description 'Print informational statistics about the table that is checked.  oc o 2. 3.'
complete -c myisamchk -l medium-check --description '.'
complete -c myisamchk -s m --description 'Do a check that is faster than an.'
complete -c myisamchk -l read-only --description '.'
complete -c myisamchk -s T --description 'Do not mark the table as checked.'
complete -c myisamchk -l update-state --description '.'
complete -c myisamchk -s U --description 'Store information in the .'
complete -c myisamchk -l backup --description '.'
complete -c myisamchk -s B --description 'Make a backup of the . MYD file as file_name-time. BAK oc o 2. 3.'
complete -c myisamchk -l character-sets-dir --description 'The directory where character sets are installed.  See Section 10.'
complete -c myisamchk -l correct-checksum --description 'Correct the checksum information for the table.  oc o 2. 3.'
complete -c myisamchk -l data-file-length --description '.'
complete -c myisamchk -s D --description 'The maximum length of the data file (when re-creating data file when it is “f…'
complete -c myisamchk -l keys-used --description '.'
complete -c myisamchk -s k --description 'For myisamchk, the option value is a bit value that indicates which indexes t…'
complete -c myisamchk -l no-symlinks --description '.'
complete -c myisamchk -s l --description 'Do not follow symbolic links.'
complete -c myisamchk -l max-record-length --description 'Skip rows larger than the given length if myisamchk cannot allocate memory to…'
complete -c myisamchk -l parallel-recover --description '.'
complete -c myisamchk -s p --description 'Use the same technique as.'
complete -c myisamchk -s n --description 'This is beta-quality code.  Use at your own risk! oc o 2. 3.'
complete -c myisamchk -l quick --description '.'
complete -c myisamchk -s q --description 'Achieve a faster repair by modifying only the index file, not the data file.'
complete -c myisamchk -s o --description 'Do a repair using an old recovery method that reads through all rows in order…'
complete -c myisamchk -l set-collation --description 'Specify the collation to use for sorting table indexes.'
complete -c myisamchk -l tmpdir --description '.'
complete -c myisamchk -s t --description 'The path of the directory to be used for storing temporary files.'
complete -c myisamchk -l unpack --description '.'
complete -c myisamchk -s u --description 'Unpack a table that was packed with myisampack.'
complete -c myisamchk -s a --description 'Analyze the distribution of key values.'
complete -c myisamchk -l block-search --description '.'
complete -c myisamchk -s b --description 'Find the record that a block at the given offset belongs to.  oc o 2. 3.'
complete -c myisamchk -l description --description '.'
complete -c myisamchk -l set-auto-increment --description '.'
complete -c myisamchk -s A --description 'Force AUTO_INCREMENT numbering for new records to start at the given value (o…'
complete -c myisamchk -l sort-index --description '.'
complete -c myisamchk -s S --description 'Sort the index tree blocks in high-low order.'
complete -c myisamchk -l sort-records --description '.'
complete -c myisamchk -s R --description 'Sort records according to a particular index.'
complete -c myisamchk -o eis --description 'The tbl_name argument can be either the name of a MyISAM table or the name of…'
complete -c myisamchk -o rw-rw---- --description '.'
complete -c myisamchk -l myisam_sort_buffer_size --description 'is probably enough for most cases.'
complete -c myisamchk -l 'quick;' --description 'This space must be available on the same file system as the original data fil…'
