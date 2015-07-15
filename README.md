# telescope-orchestration

This docker-compose orchestration links three containers to a working "bundle"

telescope
mongo
datadog

To work properly, copy/rename the "template.env" to ".env" and modify it to meet your needs.

This version does NOT use a proper data-container, 
but uses the the underlying filesystem to provide "persistent" data.