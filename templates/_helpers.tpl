{{/*
Return the full image reference for a service.
If .image.repository is set, use that; otherwise fall back to .Values.docker.repository.
*/}}
{{- define "petclinic.image" -}}
{{- $repo := .image.repository | default $.Values.docker.repository -}}
{{- printf "%s/%s" $repo .image.name -}}
{{- end -}}
