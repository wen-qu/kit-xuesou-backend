# pg_restore
# Autogenerated from man page /usr/share/man/man1/pg_restore.1.gz
complete -c pg_restore -o 'a
.br
--data-only' --description 'Restore only the data, not the schema (data definitions).'
complete -c pg_restore -o 'c
.br
--clean' --description 'Clean (drop) database objects before recreating them.'
complete -c pg_restore -o 'C
.br
--create' --description 'Create the database before restoring into it.'
complete -c pg_restore -s d --description 'Connect to database dbname and restore directly into the database.'
complete -c pg_restore -o 'e
.br
--exit-on-error' --description 'Exit if an error is encountered while sending SQL commands to the database.'
complete -c pg_restore -s f --description 'Specify output file for generated script, or for the listing when used with -…'
complete -c pg_restore -s I --description 'Restore definition of named index only.'
complete -c pg_restore -s j --description 'Run the most time-consuming parts of pg_restore \\(em those which load data, c…'
complete -c pg_restore -o 'l
.br
--list' --description 'List the table of contents of the archive.'
complete -c pg_restore -s L --description 'Restore only those archive elements that are listed in list-file, and restore…'
complete -c pg_restore -s n --description 'Restore only objects that are in the named schema.'
complete -c pg_restore -s N --description 'Do not restore objects that are in the named schema.'
complete -c pg_restore -o 'O
.br
--no-owner' --description 'Do not output commands to set ownership of objects to match the original data…'
complete -c pg_restore -s P --description 'Restore the named function only.'
complete -c pg_restore -o 'R
.br
--no-reconnect' --description 'This option is obsolete but still accepted for backwards compatibility.'
complete -c pg_restore -o 's
.br
--schema-only' --description 'Restore only the schema (data definitions), not data, to the extent that sche…'
complete -c pg_restore -s S --description 'Specify the superuser user name to use when disabling triggers.'
complete -c pg_restore -s t --description 'Restore definition and/or data of only the named table.'
complete -c pg_restore -s T --description 'Restore named trigger only.'
complete -c pg_restore -o 'v
.br
--verbose' --description 'Specifies verbose mode.'
complete -c pg_restore -o 'V
.br
--version' --description 'Print the pg_restore version and exit.'
complete -c pg_restore -o 'x
.br
--no-privileges
.br
--no-acl' --description 'Prevent restoration of access privileges (grant/revoke commands).'
complete -c pg_restore -o '1
.br
--single-transaction' --description 'Execute the restore as a single transaction (that is, wrap the emitted comman…'
complete -c pg_restore -l disable-triggers --description 'This option is relevant only when performing a data-only restore.'
complete -c pg_restore -l enable-row-security --description 'This option is relevant only when restoring the contents of a table which has…'
complete -c pg_restore -l if-exists --description 'Use conditional commands (i. e.'
complete -c pg_restore -l no-data-for-failed-tables --description 'By default, table data is restored even if the creation command for the table…'
complete -c pg_restore -l no-publications --description 'Do not output commands to restore publications, even if the archive contains …'
complete -c pg_restore -l no-security-labels --description 'Do not output commands to restore security labels, even if the archive contai…'
complete -c pg_restore -l no-subscriptions --description 'Do not output commands to restore subscriptions, even if the archive contains…'
complete -c pg_restore -l no-tablespaces --description 'Do not output commands to select tablespaces.'
complete -c pg_restore -l section --description 'Only restore the named section.'
complete -c pg_restore -l strict-names --description 'Require that each schema (-n/--schema) and table (-t/--table) qualifier match…'
complete -c pg_restore -l use-set-session-authorization --description 'Output SQL-standard SET SESSION AUTHORIZATION commands instead of ALTER OWNER…'
complete -c pg_restore -o '?
.br
--help' --description 'Show help about pg_restore command line arguments, and exit.'
complete -c pg_restore -s h --description 'Specifies the host name of the machine on which the server is running.'
complete -c pg_restore -s p --description 'Specifies the TCP port or local Unix domain socket file extension on which th…'
complete -c pg_restore -s U --description 'User name to connect as.'
complete -c pg_restore -o 'w
.br
--no-password' --description 'Never issue a password prompt.'
complete -c pg_restore -o 'W
.br
--password' --description 'Force pg_restore to prompt for a password before connecting to a database.'
complete -c pg_restore -l role --description 'Specifies a role name to be used to perform the restore.'
complete -c pg_restore -s a --description '.'
complete -c pg_restore -l data-only --description '.'
complete -c pg_restore -s c --description '.'
complete -c pg_restore -l clean --description '.'
complete -c pg_restore -s C --description '.'
complete -c pg_restore -l create --description '.'
complete -c pg_restore -l dbname --description '.'
complete -c pg_restore -s e --description '.'
complete -c pg_restore -l exit-on-error --description '.'
complete -c pg_restore -l file --description '.'
complete -c pg_restore -s l --description '.'
complete -c pg_restore -s F --description '.'
complete -c pg_restore -l format --description '.'
complete -c pg_restore -l index --description '.'
complete -c pg_restore -l jobs --description '.'
complete -c pg_restore -l single-transaction --description '.'
complete -c pg_restore -l list --description '.'
complete -c pg_restore -l use-list --description '.'
complete -c pg_restore -l schema --description '.'
complete -c pg_restore -l exclude-schema --description '.'
complete -c pg_restore -s O --description '.'
complete -c pg_restore -l no-owner --description '.'
complete -c pg_restore -l function --description '.'
complete -c pg_restore -s R --description '.'
complete -c pg_restore -l no-reconnect --description '.'
complete -c pg_restore -s s --description '.'
complete -c pg_restore -l schema-only --description '.'
complete -c pg_restore -l superuser --description '.'
complete -c pg_restore -l table --description '.'
complete -c pg_restore -l trigger --description '.'
complete -c pg_restore -s v --description '.'
complete -c pg_restore -l verbose --description '.'
complete -c pg_restore -s V --description '.'
complete -c pg_restore -l version --description '.'
complete -c pg_restore -s x --description '.'
complete -c pg_restore -l no-privileges --description '.'
complete -c pg_restore -l no-acl --description '.'
complete -c pg_restore -s 1 --description '.'
complete -c pg_restore -s '?' --description '.'
complete -c pg_restore -l help --description '.'
complete -c pg_restore -l host --description '.'
complete -c pg_restore -l port --description '.'
complete -c pg_restore -l username --description '.'
complete -c pg_restore -s w --description '.'
complete -c pg_restore -l no-password --description '.'
complete -c pg_restore -s W --description '.'
complete -c pg_restore -l password --description '.'

