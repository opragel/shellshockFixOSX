# Shellshock fix for OS X
This repository contains precompiled bash 3.2.57 & sh binaries which are patched against the following CVEs associated with the 'shellshock' vulnerabilities listed below. It also contains a script ('compileAndReplaceBash-3.2.57.sh') that can be used by running ./compileAndReplaceBash-3.2.57.sh from the command line.

```
bash32-052      CVE-2014-6271                           2014-09-24
bash32-053      CVE-2014-7169                           2014-09-26
bash32-054      exported function namespace change      2014-09-27 ("Game Over")
bash32-055      CVE-2014-7186/CVE-2014-7187             2014-10-01
bash32-056      CVE-2014-6277                           2014-10-02
bash32-057      CVE-2014-6278                           2014-10-05
```

Credit to all the posters in this thread which contains much more info: http://apple.stackexchange.com/questions/14684…
