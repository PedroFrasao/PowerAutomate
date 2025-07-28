replace(
  replace(
    replace(
      replace(
        replace(
          replace(
            outputs('ComposeCausaRaiz'),
            '{{ACAO_CORRETIVA_1}}', coalesce(triggerBody()?['...'], '')
          ),
            '{{ACAO_CORRETIVA_2}}', coalesce(triggerBody()?['...'], '')
        ),
            '{{ACAO_CORRETIVA_3}}', coalesce(triggerBody()?['...'], '')
      ),
            '{{VERIFICADOR_EFICACIA}}', coalesce(triggerBody()?['...'], '')
    ),
            '{{DATA_VEIFICACAO}}', coalesce(triggerBody()?['...'], '')
  ),
            '{{EFICAZ}}', coalesce(triggerBody()?['...'], '')
)
