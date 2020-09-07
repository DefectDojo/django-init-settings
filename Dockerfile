FROM hairyhenderson/gomplate:v3.8.0

# Copy the settings.dist.py file to then process it with the template engine
COPY ./settings.dist.py /settings.src.py
