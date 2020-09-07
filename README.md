# django-init-settings
Init container for settings.py

Using https://github.com/hairyhenderson/gomplate, process a templatized settings.dist.py to create a custom settings.py with our values.
This is meant to be used as an initContainer in Kubernetes.

`/settings.src.py (templatized settings.dist.py) --> gomplate with /values/settings.yaml --> /settings/settings.py`

## Example with docker
```
$ docker run --rm -v $(pwd)/settings:/settings -v $(pwd)/values:/values defectdojo/django-init-settings -f /settings.src.py -d settings=file:///values/settings.yaml -o /settings/settings.py
```

will produce a process `settings.py` in the `settings` volume. Remove the `-o` to view the result on STDOUT.

For more documentation on gomplate, please visit the official github repo at https://github.com/hairyhenderson/gomplate.
