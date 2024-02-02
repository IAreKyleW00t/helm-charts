{{/* vim: set filetype=mustache: */}}
{{/* Generate basic labels */}}
{{- define "external-dns.labels" -}}
app.kubernetes.io/name: external-dns
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.Version }}
{{- end }}

{{/* Generate Pod selector labels */}}
{{- define "external-dns.selectorLabels" -}}
app.kubernetes.io/name: external-dns
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
