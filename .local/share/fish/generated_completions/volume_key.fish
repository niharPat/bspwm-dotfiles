# volume_key
# Autogenerated from man page /usr/share/man/man8/volume_key.8.gz
complete -c volume_key -l save -d 'Expects operands  VOLUME [PACKET].  Open VOLUME'
complete -c volume_key -l restore -d 'Expects operands  VOLUME PACKET'
complete -c volume_key -l setup-volume -d 'Expects operands  VOLUME PACKET NAME'
complete -c volume_key -l reencrypt -d 'Expects operand PACKET'
complete -c volume_key -l dump -d 'Expects operand PACKET'
complete -c volume_key -l secrets -d 'Expects operand PACKET'
complete -c volume_key -l help -d 'Show usage information'
complete -c volume_key -l version -d 'Show version of volume_key'
complete -c volume_key -s b -l batch -d 'Run in batch mode'
complete -c volume_key -s d -l nss-dir -d 'Use private keys in NSS database in  DIR to decrypt public key-encrypted pack…'
complete -c volume_key -s o -l output -d 'Write the default secret to PACKET'
complete -c volume_key -l output-data-encryption-key -d 'Write the data encryption key (the key directly used to encrypt the actual vo…'
complete -c volume_key -l output-passphrase -d 'Write a passphrase that can be used to access the volume to PACKET'
complete -c volume_key -l create-random-passphrase -d 'Generate a random alphanumeric passphrase, add it to  VOLUME (without affecti…'
complete -c volume_key -s c -l certificate -d 'Load a certificate from the file specified by  CERT and encrypt all output pa…'
complete -c volume_key -l output-format -d 'Use  FORMAT for all output packets'
complete -c volume_key -l unencrypted -d 'Only dump the unencrypted parts of the packet, if any, with --dump'
complete -c volume_key -l with-secrets -d 'Include secrets in the output of --dump'

