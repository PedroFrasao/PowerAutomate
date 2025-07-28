replace(
  replace(
    replace(
      replace(
        replace(
          replace(
            replace(
              replace(
                replace(
                  outputs('ComposeBasico'),
                  '{{EMITENTE}}',
                  coalesce(triggerBody()?['...'], '')
                ),
                '{{AREA}}',
                coalesce(triggerBody()?['...'], '')
              ),
              '{{ENVOLVIDOS}}',
              coalesce(string(outputs('Join')?['body']), '')
            ),
            '{{CODIGO_ITEM}}',
            coalesce(string(triggerBody()?['...']), '')
          ),
          '{{DESCRICAO_ITEM}}',
          coalesce(triggerBody()?['...'], '')
        ),
        '{{QUANTIDADE}}',
        if(equals(triggerBody()?['...'], null), '', string(triggerBody()?['...']))
      ),
      '{{CLIENTE_FORNECEDOR}}',
      coalesce(string(triggerBody()?['...']), '')
    ),
    '{{ORDEM_COMPRA}}',
    coalesce(string(triggerBody()?['...']), '')
  ),
  '{{NOTA_FISCAL}}',
  coalesce(string(triggerBody()?['...']), '')
)
