# mysqlpump
# Autogenerated from man page /usr/share/man/man1/mysqlpump.1.gz
complete -c mysqlpump -l single-transaction --description 'option is not used.'
complete -c mysqlpump -l result-file --description 'option, which creates the output in ASCII format: shell> mysqlpump [options] …'
complete -c mysqlpump -l all-databases --description 'option: shell> mysqlpump --all-databases To dump a single database, or certai…'
complete -c mysqlpump -l databases --description 'option: shell> mysqlpump --databases db_name1 db_name2 .'
complete -c mysqlpump -l users --description 'option and suppress all database dumping: shell> mysqlpump --exclude-database…'
complete -c mysqlpump -l exclude-databases --description 'option.'
complete -c mysqlpump -l help --description '.'
complete -c mysqlpump -s '?' --description 'Display a help message and exit.  oc o 2. 3.'
complete -c mysqlpump -l add-drop-database --description 'Write a DROP DATABASE statement before each CREATE DATABASE statement.'
complete -c mysqlpump -l add-drop-table --description 'Write a DROP TABLE statement before each CREATE TABLE statement.  oc o 2. 3.'
complete -c mysqlpump -l add-drop-user --description 'Write a DROP USER statement before each CREATE USER statement.  oc o 2. 3.'
complete -c mysqlpump -l add-locks --description 'Surround each table dump with LOCK TABLES and UNLOCK TABLES statements.'
complete -c mysqlpump -s A --description 'Dump all databases (with certain exceptions noted in mysqlpump Restrictions).'
complete -c mysqlpump -l bind-address --description 'On a computer having multiple network interfaces, use this option to select w…'
complete -c mysqlpump -l character-sets-dir --description 'The directory where character sets are installed.  See Section 10.'
complete -c mysqlpump -l complete-insert --description 'Write complete INSERT statements that include column names.  oc o 2. 3.'
complete -c mysqlpump -l compress --description '.'
complete -c mysqlpump -s C --description 'Compress all information sent between the client and the server if possible.'
complete -c mysqlpump -l compress-output --description 'By default, mysqlpump does not compress output.'
complete -c mysqlpump -s B --description 'Normally, mysqlpump treats the first name argument on the command line as a d…'
complete -c mysqlpump -l debug --description '.'
complete -c mysqlpump -s '#' --description 'Write a debugging log.  A typical debug_options string is d:t:o,file_name.'
complete -c mysqlpump -l debug-check --description 'Print some debugging information when the program exits.'
complete -c mysqlpump -l debug-info --description '.'
complete -c mysqlpump -s T --description 'Print debugging information and memory and CPU usage statistics when the prog…'
complete -c mysqlpump -l default-auth --description 'A hint about which client-side authentication plugin to use.  See Section 6.'
complete -c mysqlpump -l default-character-set --description 'Use charset_name as the default character set.  See Section 10.'
complete -c mysqlpump -l default-parallelism --description 'The default number of threads for each parallel processing queue.'
complete -c mysqlpump -l parallel-schemas --description 'option also affects parallelism and can be used to override the default numbe…'
complete -c mysqlpump -l defaults-extra-file --description 'Read this option file after the global option file but (on Unix) before the u…'
complete -c mysqlpump -l defaults-file --description 'Use only the given option file.'
complete -c mysqlpump -l defaults-group-suffix --description 'Read not only the usual option groups, but also groups with the usual names a…'
complete -c mysqlpump -l defer-table-indexes --description 'In the dump output, defer index creation for each table until after its rows …'
complete -c mysqlpump -l skip-defer-table-indexes --description 'to disable it.  oc o 2. 3.'
complete -c mysqlpump -l events --description 'Include Event Scheduler events for the dumped databases in the output.'
complete -c mysqlpump -l skip-events --description 'to disable it.  oc o 2. 3.'
complete -c mysqlpump -l exclude-events --description 'Do not dump the databases in event_list, which is a list of one or more comma…'
complete -c mysqlpump -l exclude-routines --description 'Do not dump the events in routine_list, which is a list of one or more comma-…'
complete -c mysqlpump -l exclude-tables --description 'Do not dump the tables in table_list, which is a list of one or more comma-se…'
complete -c mysqlpump -l exclude-triggers --description 'Do not dump the triggers in trigger_list, which is a list of one or more comm…'
complete -c mysqlpump -l exclude-users --description 'Do not dump the user accounts in user_list, which is a list of one or more co…'
complete -c mysqlpump -l extended-insert --description 'Write INSERT statements using multiple-row syntax that includes several VALUE…'
complete -c mysqlpump -l get-server-public-key --description 'Request from the server the public key required for RSA key pair-based passwo…'
complete -c mysqlpump -l server-public-key-path --description 'is given and specifies a valid public key file, it takes precedence over.'
complete -c mysqlpump -l hex-blob --description 'Dump binary columns using hexadecimal notation (for example, abc becomes 0x61…'
complete -c mysqlpump -l host --description '.'
complete -c mysqlpump -s h --description 'Dump data from the MySQL server on the given host.  oc o 2. 3.'
complete -c mysqlpump -l include-databases --description 'Dump the databases in db_list, which is a list of one or more comma-separated…'
complete -c mysqlpump -l include-events --description 'Dump the events in event_list, which is a list of one or more comma-separated…'
complete -c mysqlpump -l include-routines --description 'Dump the routines in routine_list, which is a list of one or more comma-separ…'
complete -c mysqlpump -l include-tables --description 'Dump the tables in table_list, which is a list of one or more comma-separated…'
complete -c mysqlpump -l include-triggers --description 'Dump the triggers in trigger_list, which is a list of one or more comma-separ…'
complete -c mysqlpump -l include-users --description 'Dump the user accounts in user_list, which is a list of one or more comma-sep…'
complete -c mysqlpump -l insert-ignore --description 'Write INSERT IGNORE statements rather than INSERT statements.  oc o 2. 3.'
complete -c mysqlpump -l log-error-file --description 'Log warnings and errors by appending them to the named file.'
complete -c mysqlpump -l login-path --description 'Read options from the named login path in the . mylogin. cnf login path file.'
complete -c mysqlpump -l max-allowed-packet --description 'The maximum size of the buffer for client/server communication.'
complete -c mysqlpump -l net-buffer-length --description 'The initial size of the buffer for client/server communication.'
complete -c mysqlpump -l no-create-db --description 'Suppress any CREATE DATABASE statements that might otherwise be included in t…'
complete -c mysqlpump -l no-create-info --description '.'
complete -c mysqlpump -s t --description 'Do not write CREATE TABLE statements that create each dumped table.  oc o 2.'
complete -c mysqlpump -l no-defaults --description 'Do not read any option files.'
complete -c mysqlpump -l password --description '.'
complete -c mysqlpump -s p --description 'The password of the MySQL account used for connecting to the server.'
complete -c mysqlpump -l skip-password --description 'option.  oc o 2. 3.'
complete -c mysqlpump -l plugin-dir --description 'The directory in which to look for plugins.  Specify this option if the.'
complete -c mysqlpump -l port --description '.'
complete -c mysqlpump -s P --description 'For TCP/IP connections, the port number to use.  oc o 2. 3.'
complete -c mysqlpump -l print-defaults --description 'Print the program name and all options that it gets from option files.'
complete -c mysqlpump -l protocol --description 'The transport protocol to use for connecting to the server.'
complete -c mysqlpump -l replace --description 'Write REPLACE statements rather than INSERT statements.  oc o 2. 3.'
complete -c mysqlpump -l routines --description 'Include stored routines (procedures and functions) for the dumped databases i…'
complete -c mysqlpump -l skip-routines --description 'to disable it.  oc o 2. 3.'
complete -c mysqlpump -l secure-auth --description 'Do not send passwords to the server in old (pre-4. 1) format.'
complete -c mysqlpump -l set-charset --description 'Write SET NAMES default_character_set to the output.'
complete -c mysqlpump -l skip-set-charset --description 'oc o 2. 3.'
complete -c mysqlpump -l set-gtid-purged --description 'This option enables control over global transaction ID (GTID) information wri…'
complete -c mysqlpump -l skip-definer --description 'Omit DEFINER and SQL SECURITY clauses from the CREATE statements for views an…'
complete -c mysqlpump -l skip-dump-rows --description '.'
complete -c mysqlpump -s d --description 'Do not dump table rows.  oc o 2. 3.'
complete -c mysqlpump -l socket --description '.'
complete -c mysqlpump -s S --description 'For connections to localhost, the Unix socket file to use, or, on Windows, th…'
complete -c mysqlpump -l 'ssl*' --description 'Options that begin with.'
complete -c mysqlpump -l ssl --description 'specify whether to connect to the server using SSL and indicate where to find…'
complete -c mysqlpump -l tls-version --description 'The permissible TLS protocols for encrypted connections.'
complete -c mysqlpump -l triggers --description 'Include triggers for each dumped table in the output.'
complete -c mysqlpump -l skip-triggers --description 'to disable it.  oc o 2. 3.'
complete -c mysqlpump -l tz-utc --description 'This option enables TIMESTAMP columns to be dumped and reloaded between serve…'
complete -c mysqlpump -l skip-tz-utc --description 'to disable it.  oc o 2. 3.'
complete -c mysqlpump -l user --description '.'
complete -c mysqlpump -s u --description 'The user name of the MySQL account to use for connecting to the server.'
complete -c mysqlpump -l version --description '.'
complete -c mysqlpump -s V --description 'Display version information and exit.  oc o 2. 3.'
complete -c mysqlpump -l watch-progress --description 'Periodically display a progress indicator that provides information about the…'
complete -c mysqlpump -l skip-watch-progress --description 'to disable it.'
