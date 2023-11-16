





# Configurar as permissões necessárias para write-back de senha
Habilitar a opção de write-back de senha no Microsoft Entra Connect
Habilitar o write-back de senha na SSPR do Microsoft Entra

- Com a redefinição de senha self-service (SSPR) do Microsoft Entra, os usuários podem atualizar as respectivas senhas ou desbloquear as respectivas contas usando um navegador da Web. Recomendamos este vídeo sobre Como habilitar e configurar o SSPR no Microsoft Entra ID. Em um ambiente híbrido em que o Microsoft Entra ID está conectado a um ambiente local do Active Directory Domain Services (AD DS), esse cenário pode fazer com que as senhas sejam diferentes entre os dois diretórios.


 - Microsoft Entra ID. Usa licença de avaliação habilitada.

# Sincronizados. As seguintes permissões e opções precisam estar definidas na conta:

- Redefinir senha
- Alterar senha
- Permissões de gravação em lockoutTime
- Permissões de gravação em pwdLastSet
- Direitos estendidos para "Não permitir expiração da senha" no objeto raiz de cada domínio nessa floresta, caso ainda não estejam definidos.

  # Implemnetar
  Link https://learn.microsoft.com/pt-br/training/modules/allow-users-reset-their-password/3-implement-azure-ad-self-service-password-reset
