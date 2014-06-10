# Step add-ssh-key

Wercker allows you to generate SSH keys and expose them as via
environment variables to your build or deployment pipeline.
This step allows you to write an `.ssh/config` for bitbucket and github,
An examplary use would be for vcs repos in composer.

Example:

```
Host github
  HostName github.com
  IdentityFile .ssh/id_rsa

Host bitbucket
  HostName bitbucket.org
  IdentityFile .ssh/id_rsa

```

# Options

- `keyname` The name of the key variable to export, this is without the dollar sign prefix and without the `_PUBLIC` or `_PRIVATE` suffix.

# Example

``` yaml
build:
    steps:
        - add-ssh-key-gh-bb:
            keyname: MYPACKAGE_KEY
```

# What's new

Validate if a key is being written
 
# Changelog

## 1.0.0

- Add validation of key

## 0.0.3

- Fix: broken identity file

## 0.0.2

- Add ssh-key for root

## 0.0.1

- Initial version

# License

The MIT License (MIT)

Copyright (c) 2013 wercker
