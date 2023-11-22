{{- define "vaultTrust.common.metaLabels" -}}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{- define "vaultTrust.trust.metaLabels" -}}
{{ include "vaultTrust.common.metaLabels" . }}
app.kubernetes.io/part-of: trust 
{{- end -}}