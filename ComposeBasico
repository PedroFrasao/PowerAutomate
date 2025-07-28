replace(
  replace(
    outputs('GetFileContent')?['body'],
    '{{NUMERO_RNC}}',
    concat(
      string(triggerOutputs()?['body/N_x00fa_mero_x002e_RNC_x003a_']),
      '  ',
      formatDateTime(triggerOutputs()?['body/Data_x0020_Cria_x00e7__x00e3_o'], 'MM'),
      '  ',
      formatDateTime(triggerOutputs()?['body/Data_x0020_Cria_x00e7__x00e3_o'], 'yyyy')
    )
  ),
  '{{DATA_RNC}}',
  formatDateTime(triggerOutputs()?['body/Data_x0020_Cria_x00e7__x00e3_o'], 'dd/MM/yyyy')
)
