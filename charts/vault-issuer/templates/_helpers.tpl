{{- define "vaultIssuer.common.metaLabels" -}}
app.kubernetes.io/version: {{ .Chart.Version }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}
