{{- define "vaultIntegration.common.metaLabels" -}}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{- define "vaultIntegration.trust.metaLabels " -}}
{{ include "vaultIntegration.common.metaLabels" . }}
app.kubernetes.io/part-of: trust 
{{- end -}}