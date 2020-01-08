Given("que eu possuo a conta {string}") do |conta|
  @conta = conta
end

Given("possuo os skills {string}") do |skills|
    @skills = skills
end

When("eu entro no Gitnder") do
 visit "https://gitnder.herokuapp.com/"
 find("#gituser").set @conta
 find("input[placeholder=Seus skills separados por virgula]").set @skills
 click_button "Enviar"
end

Then("devo ver a area logada") do
  usuario_logado =  page.has_css?(".gitusers")
  expect(usuario_logado).to be true
end

Then("devo ver a mensagem de alerta: {string}") do |mensagem_esperada|
 alert = find(".alert-dark")
 expect(alert.text).to eql mensagem_esperada
end