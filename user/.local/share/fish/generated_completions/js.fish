# js
# Autogenerated from man page /usr/share/man/man1/js.1.gz
complete -c js -s v -l version --description 'Print node\'s version.'
complete -c js -s h -l help --description 'Print node command line options.'
complete -c js -s e -l eval --description 'Evaluate the following argument as JavaScript.'
complete -c js -s p -l print --description 'Identical to -e but prints the result.'
complete -c js -s c -l check --description 'Syntax check the script without executing.'
complete -c js -s i -l interactive --description 'Open the REPL even if stdin does not appear to be a terminal.'
complete -c js -s r -l require --description 'Preload the specified module at startup.'
complete -c js -l inspect --description 'Activate inspector on host:port.  Default is 127. 0. 0. 1:9229.'
complete -c js -l inspect-brk --description 'Activate inspector on host:port and break at start of user script.'
complete -c js -l inspect-port --description 'Set the host:port to be used when the inspector is activated.'
complete -c js -l no-deprecation --description 'Silence deprecation warnings.'
complete -c js -l trace-deprecation --description 'Print stack traces for deprecations.'
complete -c js -l throw-deprecation --description 'Throw errors for deprecations.'
complete -c js -l pending-deprecation --description 'Emit pending deprecation warnings.'
complete -c js -l no-warnings --description 'Silence all process warnings (including deprecations).'
complete -c js -l napi-modules --description 'Enable loading native modules compiled with the ABI-stable Node.'
complete -c js -l abort-on-uncaught-exception --description 'Aborting instead of exiting causes a core file to be generated for analysis.'
complete -c js -l trace-warnings --description 'Print stack traces for process warnings (including deprecations).'
complete -c js -l redirect-warnings --description 'Write process warnings to the given file instead of printing to stderr.'
complete -c js -l trace-sync-io --description 'Print a stack trace whenever synchronous I/O is detected after the first turn…'
complete -c js -l force-async-hooks-checks --description 'Enables runtime checks for `async_hooks`.'
complete -c js -l trace-events-enabled --description 'Enables the collection of trace event tracing information.'
complete -c js -l trace-event-categories --description 'A comma separated list of categories that should be traced when trace event t…'
complete -c js -l zero-fill-buffers --description 'Automatically zero-fills all newly allocated Buffer and SlowBuffer instances.'
complete -c js -l preserve-symlinks --description 'Instructs the module loader to preserve symbolic links when resolving and cac…'
complete -c js -l track-heap-objects --description 'Track heap object allocations for heap snapshots.'
complete -c js -l prof-process --description 'Process V8 profiler output generated using the V8 option --prof.'
complete -c js -l v8-options --description 'Print V8 command line options.'
complete -c js -l v8-pool-size --description 'Set v8\'s thread pool size which will be used to allocate background jobs.'
complete -c js -l tls-cipher-list --description 'Specify an alternative default TLS cipher list.  (Requires Node.'
complete -c js -l enable-fips --description 'Enable FIPS-compliant crypto at startup.  (Requires Node.'
complete -c js -l force-fips --description 'Force FIPS-compliant crypto on startup.  (Cannot be disabled from script code.'
complete -c js -l openssl-config --description 'Load an OpenSSL configuration file on startup.'
complete -c js -l use-openssl-ca -l use-bundled-ca --description 'Use OpenSSL\'s default CA store or use bundled Mozilla CA store as supplied by…'
complete -c js -l icu-data-dir --description 'Specify ICU data load path.  (overrides NODE_ICU_DATA).'
complete -c js -l stack_trace_limit --description '.'
