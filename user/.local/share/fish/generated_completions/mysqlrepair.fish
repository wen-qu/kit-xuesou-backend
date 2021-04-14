# mysqlrepair
# Autogenerated from man page /usr/share/man/man1/mysqlrepair.1.gz
complete -c mysqlrepair -l databases --description 'or.'
complete -c mysqlrepair -l all-databases --description 'option to process all tables in one or more databases, an invocation of mysql…'
complete -c mysqlrepair -l help --description '.'
complete -c mysqlrepair -s '?' --description 'Display a help message and exit.  oc o 2. 3.'
complete -c mysqlrepair -s A --description 'Check all tables in all databases.  This is the same as using the.'
complete -c mysqlrepair -l all-in-1 --description '.'
complete -c mysqlrepair -s 1 --description 'Instead of issuing a statement for each table, execute a single statement for…'
complete -c mysqlrepair -l analyze --description '.'
complete -c mysqlrepair -s a --description 'Analyze the tables.  oc o 2. 3.'
complete -c mysqlrepair -l auto-repair --description 'If a checked table is corrupted, automatically fix it.'
complete -c mysqlrepair -l bind-address --description 'On a computer having multiple network interfaces, use this option to select w…'
complete -c mysqlrepair -l character-sets-dir --description 'The directory where character sets are installed.  See Section 10.'
complete -c mysqlrepair -l check --description '.'
complete -c mysqlrepair -s c --description 'Check the tables for errors.  This is the default operation.  oc o 2. 3.'
complete -c mysqlrepair -l check-only-changed --description '.'
complete -c mysqlrepair -s C --description 'Check only tables that have changed since the last check or that have not bee…'
complete -c mysqlrepair -l check-upgrade --description '.'
complete -c mysqlrepair -s g --description 'Invoke CHECK TABLE with the FOR UPGRADE option to check tables for incompatib…'
complete -c mysqlrepair -l fix-db-names --description 'and.'
complete -c mysqlrepair -l fix-table-names --description 'options.  oc o 2. 3.'
complete -c mysqlrepair -l compress --description 'Compress all information sent between the client and the server if possible.'
complete -c mysqlrepair -s B --description 'Process all tables in the named databases.'
complete -c mysqlrepair -l debug --description '.'
complete -c mysqlrepair -s '#' --description 'Write a debugging log.  A typical debug_options string is d:t:o,file_name.'
complete -c mysqlrepair -l debug-check --description 'Print some debugging information when the program exits.'
complete -c mysqlrepair -l debug-info --description 'Print debugging information and memory and CPU usage statistics when the prog…'
complete -c mysqlrepair -l default-character-set --description 'Use charset_name as the default character set.  See Section 10.'
complete -c mysqlrepair -l defaults-extra-file --description 'Read this option file after the global option file but (on Unix) before the u…'
complete -c mysqlrepair -l defaults-file --description 'Use only the given option file.'
complete -c mysqlrepair -l defaults-group-suffix --description 'Read not only the usual option groups, but also groups with the usual names a…'
complete -c mysqlrepair -l extended --description '.'
complete -c mysqlrepair -s e --description 'If you are using this option to check tables, it ensures that they are 100% c…'
complete -c mysqlrepair -l default-auth --description 'A hint about which client-side authentication plugin to use.  See Section 6.'
complete -c mysqlrepair -l enable-cleartext-plugin --description 'Enable the mysql_clear_password cleartext authentication plugin.'
complete -c mysqlrepair -l fast --description '.'
complete -c mysqlrepair -s F --description 'Check only tables that have not been closed properly.  oc o 2. 3.'
complete -c mysqlrepair -l force --description '.'
complete -c mysqlrepair -s f --description 'Continue even if an SQL error occurs.  oc o 2. 3.'
complete -c mysqlrepair -l get-server-public-key --description 'Request from the server the public key required for RSA key pair-based passwo…'
complete -c mysqlrepair -l server-public-key-path --description 'is given and specifies a valid public key file, it takes precedence over.'
complete -c mysqlrepair -l host --description '.'
complete -c mysqlrepair -s h --description 'Connect to the MySQL server on the given host.  oc o 2. 3.'
complete -c mysqlrepair -l login-path --description 'Read options from the named login path in the . mylogin. cnf login path file.'
complete -c mysqlrepair -l medium-check --description '.'
complete -c mysqlrepair -s m --description 'Do a check that is faster than an.'
complete -c mysqlrepair -l no-defaults --description 'Do not read any option files.'
complete -c mysqlrepair -l optimize --description '.'
complete -c mysqlrepair -s o --description 'Optimize the tables.  oc o 2. 3.'
complete -c mysqlrepair -l password --description '.'
complete -c mysqlrepair -s p --description 'The password of the MySQL account used for connecting to the server.'
complete -c mysqlrepair -l skip-password --description 'option.  oc o 2. 3.'
complete -c mysqlrepair -l pipe --description '.'
complete -c mysqlrepair -s W --description 'On Windows, connect to the server using a named pipe.'
complete -c mysqlrepair -l plugin-dir --description 'The directory in which to look for plugins.  Specify this option if the.'
complete -c mysqlrepair -l port --description '.'
complete -c mysqlrepair -s P --description 'For TCP/IP connections, the port number to use.  oc o 2. 3.'
complete -c mysqlrepair -l print-defaults --description 'Print the program name and all options that it gets from option files.'
complete -c mysqlrepair -l protocol --description 'The transport protocol to use for connecting to the server.'
complete -c mysqlrepair -l quick --description '.'
complete -c mysqlrepair -s q --description 'If you are using this option to check tables, it prevents the check from scan…'
complete -c mysqlrepair -l repair --description '.'
complete -c mysqlrepair -s r --description 'Perform a repair that can fix almost anything except unique keys that are not…'
complete -c mysqlrepair -l secure-auth --description 'Do not send passwords to the server in old (pre-4. 1) format.'
complete -c mysqlrepair -l shared-memory-base-name --description 'On Windows, the shared-memory name to use for connections made using shared m…'
complete -c mysqlrepair -l silent --description '.'
complete -c mysqlrepair -s s --description 'Silent mode.  Print only error messages.  oc o 2. 3.'
complete -c mysqlrepair -l skip-database --description 'Do not include the named database (case-sensitive) in the operations performe…'
complete -c mysqlrepair -l socket --description '.'
complete -c mysqlrepair -s S --description 'For connections to localhost, the Unix socket file to use, or, on Windows, th…'
complete -c mysqlrepair -l 'ssl*' --description 'Options that begin with.'
complete -c mysqlrepair -l ssl --description 'specify whether to connect to the server using SSL and indicate where to find…'
complete -c mysqlrepair -l tables --description 'Override the.'
complete -c mysqlrepair -l tls-version --description 'The permissible TLS protocols for encrypted connections.'
complete -c mysqlrepair -l use-frm --description 'For repair operations on MyISAM tables, get the table structure from the .'
complete -c mysqlrepair -l user --description '.'
complete -c mysqlrepair -s u --description 'The user name of the MySQL account to use for connecting to the server.'
complete -c mysqlrepair -l verbose --description '.'
complete -c mysqlrepair -s v --description 'Verbose mode.'
complete -c mysqlrepair -l version --description '.'
complete -c mysqlrepair -s V --description 'Display version information and exit.  oc o 2. 3.'
complete -c mysqlrepair -l write-binlog --description 'This option is enabled by default, so that ANALYZE TABLE, OPTIMIZE TABLE, and…'
complete -c mysqlrepair -l skip-write-binlog --description 'to cause NO_WRITE_TO_BINLOG to be added to the statements so that they are no…'

