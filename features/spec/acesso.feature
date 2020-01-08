Feature: Acesso

Para que eu possa conhecer Devs e QAs com Skills em comum
Sendo um usuario que possui uma conta no Github
Quero poder iniciar uma nova sessão

Scenario: Nova Sessão
    Given que eu possuo a conta "ph-gonzaga"
    And possuo os skills "Ruby, JavaScript, PHP, Cucumber, Capybara"
    When eu entro no Gitnder
    Then devo ver a area logada

Scenario Outline: Tentar logar
    Given que eu possuo a conta <github>
    When eu entro no Gitnder
    Then devo ver a mensagem de alerta: "Conta Github não existe :("

    Examples:
    |github|
    |"ph-gonzaga404"|
    |""|


