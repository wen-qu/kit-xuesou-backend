# mysqlcheck
# Autogenerated from man page /usr/share/man/man1/mysqlcheck.1.gz
complete -c mysqlcheck -l databases --description 'or.'
complete -c mysqlcheck -l all-databases --description 'option to process all tables in one or more databases, an invocation of mysql…'
complete -c mysqlcheck -l help --description '.'
complete -c mysqlcheck -s '?' --description 'Display a help message and exit.  oc o 2. 3.'
complete -c mysqlcheck -s A --description 'Check all tables in all databases.  This is the same as using the.'
complete -c mysqlcheck -l all-in-1 --description '.'
complete -c mysqlcheck -s 1 --description 'Instead of issuing a statement for each table, execute a single statement for…'
complete -c mysqlcheck -l analyze --description '.'
complete -c mysqlcheck -s a --description 'Analyze the tables.  oc o 2. 3.'
complete -c mysqlcheck -l auto-repair --description 'If a checked table is corrupted, automatically fix it.'
complete -c mysqlcheck -l bind-address --description 'On a computer having multiple network interfaces, use this option to select w…'
complete -c mysqlcheck -l character-sets-dir --description 'The directory where character sets are installed.  See Section 10.'
complete -c mysqlcheck -l check --description '.'
complete -c mysqlcheck -s c --description 'Check the tables for errors.  This is the default operation.  oc o 2. 3.'
complete -c mysqlcheck -l check-only-changed --description '.'
complete -c mysqlcheck -s C --description 'Check only tables that have changed since the last check or that have not bee…'
complete -c mysqlcheck -l check-upgrade --description '.'
complete -c mysqlcheck -s g --description 'Invoke CHECK TABLE with the FOR UPGRADE option to check tables for incompatib…'
complete -c mysqlcheck -l fix-db-names --description 'and.'
complete -c mysqlcheck -l fix-table-names --description 'options.  oc o 2. 3.'
complete -c mysqlcheck -l compress --description 'Compress all information sent between the client and the server if possible.'
complete -c mysqlcheck -s B --description 'Process all tables in the named databases.'
complete -c mysqlcheck -l debug --description '.'
complete -c mysqlcheck -s '#' --description 'Write a debugging log.  A typical debug_options string is d:t:o,file_name.'
complete -c mysqlcheck -l debug-check --description 'Print some debugging information when the program exits.'
complete -c mysqlcheck -l debug-info --description 'Print debugging information and memory and CPU usage statistics when the prog…'
complete -c mysqlcheck -l default-character-set --description 'Use charset_name as the default character set.  See Section 10.'
complete -c mysqlcheck -l defaults-extra-file --description 'Read this option file after the global option file but (on Unix) before the u…'
complete -c mysqlcheck -l defaults-file --description 'Use only the given option file.'
complete -c mysqlcheck -l defaults-group-suffix --description 'Read not only the usual option groups, but also groups with the usual names a…'
complete -c mysqlcheck -l extended --description '.'
complete -c mysqlcheck -s e --description 'If you are using this option to check tables, it ensures that they are 100% c…'
complete -c mysqlcheck -l default-auth --description 'A hint about which client-side authentication plugin to use.  See Section 6.'
complete -c mysqlcheck -l enable-cleartext-plugin --description 'Enable the mysql_clear_password cleartext authentication plugin.'
complete -c mysqlcheck -l fast --description '.'
complete -c mysqlcheck -s F --description 'Check only tables that have not been closed properly.  oc o 2. 3.'
complete -c mysqlcheck -l force --description '.'
complete -c mysqlcheck -s f --description 'Continue even if an SQL error occurs.  oc o 2. 3.'
complete -c mysqlcheck -l get-server-public-key --description 'Request from the server the public key required for RSA key pair-based passwo…'
complete -c mysqlcheck -l server-public-key-path --description 'is given and specifies a valid public key file, it takes precedence over.'
complete -c mysqlcheck -l host --description '.'
complete -c mysqlcheck -s h --description 'Connect to the MySQL server on the given host.  oc o 2. 3.'
complete -c mysqlcheck -l login-path --description 'Read options from the named login path in the . mylogin. cnf login path file.'
complete -c mysqlcheck -l medium-check --description '.'
complete -c mysqlcheck -s m --description 'Do a check that is faster than an.'
complete -c mysqlcheck -l no-defaults --description 'Do not read any option files.'
complete -c mysqlcheck -l optimize --description '.'
complete -c mysqlcheck -s o --description 'Optimize the tables.  oc o 2. 3.'
complete -c mysqlcheck -l password --description '.'
complete -c mysqlcheck -s p --description 'The password of the MySQL account used for connecting to the server.'
complete -c mysqlcheck -l skip-password --description 'option.  oc o 2. 3.'
complete -c mysqlcheck -l pipe --description '.'
complete -c mysqlcheck -s W --description 'On Windows, connect to the server using a named pipe.'
complete -c mysqlcheck -l plugin-dir --description 'The directory in which to look for plugins.  Specify this option if the.'
complete -c mysqlcheck -l port --description '.'
complete -c mysqlcheck -s P --description 'For TCP/IP connections, the port number to use.  oc o 2. 3.'
complete -c mysqlcheck -l print-defaults --description 'Print the program name and all options that it gets from option files.'
complete -c mysqlcheck -l protocol --description 'The transport protocol to use for connecting to the server.'
complete -c mysqlcheck -l quick --description '.'
complete -c mysqlcheck -s q --description 'If you are using this option to check tables, it prevents the check from scan…'
complete -c mysqlcheck -l repair --description '.'
complete -c mysqlcheck -s r --description 'Perform a repair that can fix almost anything except unique keys that are not…'
complete -c mysqlcheck -l secure-auth --description 'Do not send passwords to the server in old (pre-4. 1) format.'
complete -c mysqlcheck -l shared-memory-base-name --description 'On Windows, the shared-memory name to use for connections made using shared m…'
complete -c mysqlcheck -l silent --description '.'
complete -c mysqlcheck -s s --description 'Silent mode.  Print only error messages.  oc o 2. 3.'
complete -c mysqlcheck -l skip-database --description 'Do not include the named database (case-sensitive) in the operations performe…'
complete -c mysqlcheck -l socket --description '.'
complete -c mysqlcheck -s S --description 'For connections to localhost, the Unix socket file to use, or, on Windows, th…'
complete -c mysqlcheck -l 'ssl*' --description 'Options that begin with.'
complete -c mysqlcheck -l ssl --description 'specify whether to connect to the server using SSL and indicate where to find…'
complete -c mysqlcheck -l tables --description 'Override the.'
complete -c mysqlcheck -l tls-version --description 'The permissible TLS protocols for encrypted connections.'
complete -c mysqlcheck -l use-frm --description 'For repair operations on MyISAM tables, get the table structure from the .'
complete -c mysqlcheck -l user --description '.'
complete -c mysqlcheck -s u --description 'The user name of the MySQL account to use for connecting to the server.'
complete -c mysqlcheck -l verbose --description '.'
complete -c mysqlcheck -s v --description 'Verbose mode.'
complete -c mysqlcheck -l version --description '.'
complete -c mysqlcheck -s V --description 'Display version information and exit.  oc o 2. 3.'
complete -c mysqlcheck -l write-binlog --description 'This option is enabled by default, so that ANALYZE TABLE, OPTIMIZE TABLE, and…'
complete -c mysqlcheck -l skip-write-binlog --description 'to cause NO_WRITE_TO_BINLOG to be added to the statements so that they are no…'
