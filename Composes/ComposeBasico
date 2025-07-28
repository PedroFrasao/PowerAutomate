replace(
  replace(
    outputs('GetFileContent')?['body'],
    '{{NUMERO_RNC}}',
    concat(
      string(triggerOutputs()?['body/...']),
      '  ',
      formatDateTime(triggerOutputs()?['body/...'], 'MM'),
      '  ',
      formatDateTime(triggerOutputs()?['body/...'], 'yyyy')
    )
  ),
  '{{DATA_RNC}}',
  formatDateTime(triggerOutputs()?['body/...'], 'dd/MM/yyyy')
)
