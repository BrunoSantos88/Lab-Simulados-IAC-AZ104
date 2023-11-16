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


  # Visão geral da colaboração B2B

  - A colaboração B2B é um recurso da ID externa do Microsoft Entra que permite a você convidar usuários para colaborar com sua organização. Com a colaboração B2B, você pode compartilhar com segurança os aplicativos e serviços de sua empresa com usuários externos enquanto mantém o controle de seus dados corporativos. Trabalhe de forma segura com parceiros externos, de grande ou pequeno porte, mesmo se eles não tiverem o Microsoft Entra ID ou um departamento de TI.
 
- LInk: https://learn.microsoft.com/pt-br/training/modules/create-users-and-groups-in-azure-active-directory/5-exercise-assign-users-azure-ad-groups
- LIik: https://learn.microsoft.com/pt-br/entra/external-id/what-is-b2b

  # Criar usuários em massa no Microsoft Entra ID

-  O Microsoft Entra ID, parte do Microsoft Entra, oferece suporte a operações de criação e exclusão de usuários em massa e oferece suporte ao download de listas de usuários. Basta preencher o modelo de valores separados por vírgulas (CSV) que você pode baixar no portal do Azure.

Link: https://learn.microsoft.com/pt-br/entra/identity/users/users-bulk-add

# QUESTION 1

- Você tem um locatário do Azure AD que usa o Azure AD Connect para sincronizar com um domínio do AD DS (Active Directory Domain Services).
- Você precisa garantir que os usuários possam redefinir a senha do AD DS no portal do Azure. Os usuários devem ser capazes de usar dois métodos para redefinir sua senha.
- Quais são as duas ações que você deve executar? Cada resposta correta apresenta uma parte da solução.
      

- R: Na redefinição de senha no portal do Azure, defina as configurações de métodos de autenticação.
- R: Execute o Azure AD Connect e selecione write-back de senha.

# QUESTION 2

- No PowerShell, você executa o cmdlet Get-MgUser para um usuário e recebe os seguintes detalhes:
Id: 8755b347-3545-3876-3987-999999999999
DisplayName: Ben Smith
Mail: bsmith@contoso.com
UserPrincipalName: bsmith_contoso.com#EXT#@fabrikam.com
Qual instrução descreve com precisão o usuário?

- R: O usuário era um convidado no locatário.

# Question 3

- Você planeja criar 100 novos usuários usando a operação Criar usuários em massa no portal do Azure.
- 
Você precisa criar um arquivo CSV que contenha as informações do usuário.

Quais atributos você deve especificar no arquivo CSV para cada usuário?

R: displayName, userPrincipalName, passwordProfile e accountEnabled

# QUESTION 4

- Seu locatário do Azure AD e o domínio do Active Directory local contêm vários usuários.
  
Você precisa configurar a funcionalidade de write-back de senha SSPR (redefinição de senha por autoatendimento). A solução precisa minimizar custos.

Qual edição do Azure AD você deve usar?

- R: Licença P1
