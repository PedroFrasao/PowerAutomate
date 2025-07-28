replace(
  replace(
    outputs('ComposeDet'),
    '{{DATA_GERACAO}}',
    formatDateTime(utcNow(), 'dd/MM/yyyy HH:mm')
  ),
  '{{EFICAZ}}',
  if(
    equals(triggerBody()?['...'], 'Não'), 
    concat('Não (Nova RNC: ', coalesce(triggerBody()?['...'], ''), ')'), 
    coalesce(triggerBody()?['...'], '')
  )
)
