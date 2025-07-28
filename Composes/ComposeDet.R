replace(
  replace(
    replace(
      replace(
        replace(
          replace(
            replace(
              outputs('ComposePlanoAcao'),
              '{{ACAO_APROVAR}}',
              if(
                equals(triggerBody()?['...'], 'Sim'),
                '<div class="checkbox-item">✓ Aprovar para Utilização</div>',
                ''
              )
            ),
            '{{ACAO_RETRABALHAR}}',
            if(
              equals(triggerBody()?['...'], 'Sim'),
              '<div class="checkbox-item">✓ Retrabalhar</div>',
              ''
            )
          ),
          '{{ACAO_REJEITAR}}',
          if(
            equals(triggerBody()?['...'], 'Sim'),
            '<div class="checkbox-item">✓ Rejeitar</div>',
            ''
          )
        ),
        '{{DESCRICAO_NC}}',
        concat(
          coalesce(triggerBody()?['...'], ''),
          ' | ',
          coalesce(triggerBody()?['...'], ''),
          ' | ',
          coalesce(triggerBody()?['...'], ''),
          ' | ',
          coalesce(triggerBody()?['...'], ''),
          ' | ',
          coalesce(triggerBody()?['...'], '')
        )
      ),
      '{{Número}}',
      string(triggerOutputs()?[''])
    ),
    '{{Data_Data}}',
    formatDateTime(triggerOutputs()?['...'], 'dd/MM/yyyy')
  ),
  '{{Resposavel}}',
  coalesce(triggerBody()?['...'], '')
)
