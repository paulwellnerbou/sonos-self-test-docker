# Docker for Sonos' test suite

## Run

    docker-compose up

## Known issues

Does not work currently due to SSL library conflicts (maybe?)

```
Traceback (most recent call last):
  File "suite_selftest.py", line 36, in <module>
    import ssl_validation
  File "/selftest/smapi/content_workflow/ssl_validation.py", line 17, in <module>
    from sslyze import sslyze
  File "../../sonos_sslyze-1.1.0.dev_r293552-py2.7.egg/sslyze/sslyze.py", line 29, in <module>
  File "../../sonos_sslyze-1.1.0.dev_r293552-py2.7.egg/sslyze/plugins/__init__.py", line 30, in <module>
  File "../../sonos_sslyze-1.1.0.dev_r293552-py2.7.egg/sslyze/plugins/PluginCertInfo.py", line 32, in <module>
  File "../../sonos_sslyze-1.1.0.dev_r293552-py2.7.egg/sslyze/utils/ctSSL/__init__.py", line 13, in <module>
  File "../../sonos_sslyze-1.1.0.dev_r293552-py2.7.egg/sslyze/utils/ctSSL/load_openssl.py", line 92, in <module>
  File "/usr/local/lib/python2.7/ctypes/__init__.py", line 379, in __getattr__
    func = self.__getitem__(name)
  File "/usr/local/lib/python2.7/ctypes/__init__.py", line 384, in __getitem__
    func = self._FuncPtr((name_or_ordinal, self))
AttributeError: /usr/lib/x86_64-linux-gnu/libcrypto.so.1.1: undefined symbol: SSLeay
```
