replace(
  replace(
    replace(
      replace(
        replace(
          replace(
            replace(
              replace(
                outputs('ComposeIdent'),  
                '{{CAUSA_RAIZ}}',
                coalesce(triggerBody()?['...'], '')
              ),
              '{{CAUSA_METODO}}',
              coalesce(triggerBody()?['...'], '')
            ),
            '{{CAUSA_MATERIAL}}',
            coalesce(triggerBody()?['...'], '')
          ),
          '{{CAUSA_MAO_DE_OBRA}}',
          coalesce(triggerBody()?['...'], '')
        ),
        '{{CAUSA_MAQUINAS}}',
        coalesce(triggerBody()?['...'], '')
      ),
      '{{CAUSA_MEDICOES}}',
      coalesce(triggerBody()?['...'], '')
    ),
    '{{CAUSA_AMBIENTE}}',
    coalesce(triggerBody()?['...'], '')
  ),
  '{{CAUSA_POTENCIAL_1}}',
  if(not(empty(triggerBody()?['...'])), concat('<li>', triggerBody()?['...'], '</li>'), '')
)
