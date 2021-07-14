-- SA 2 ETAPA 2

-- 1:  Usuário Administrador
-- O Usuário Administrador (dario) possui todos os privilégios para manter a ESTRUTURA e os DADOS de todas as bases de dados

CREATE USER dario@localhost IDENTIFIED BY '5:6gRT18';

GRANT ALL
ON *.* 
TO dario@localhost
WITH GRANT OPTION;


-- 2:  Usuário Padrão do Sistema
-- O Usuário Padrão do Sistema (app) possui todos os privilégios 
-- de manutenção dos DADOS da base de dados copa (todas as tabelas)
-- (SOMENTE PODE CONSULTAR, INSERIR, ATUALIZAR, DELETAR, E EXECUTAR STORED PROCEDURES)

CREATE USER app@localhost IDENTIFIED BY 'sjN&y4;1';

GRANT SELECT, INSERT, UPDATE, DELETE, EXECUTE 
ON copa.*
TO app@localhost;


-- 3: Usuário Restrito do Sistema
-- O Usuário Restrito do Sistema (ana) possui privilégios apenas para inserir e consultar dados
-- da base de dados copa (todas as tabelas) sem poder alterá-los ou exclui-los 

CREATE USER ana@localhost IDENTIFIED BY '9iuJ&t!Q';

GRANT SELECT, INSERT 
ON copa.*
TO ana@localhost;


-- 4: Usuário de Consulta do Sistema
-- O Usuário de Consulta do Sistema (thiago) possui privilégios apenas para consultar os dados
-- da base de dados copa (todas as tabelas)

CREATE USER thiago@localhost IDENTIFIED BY 'JkAS89.3';

GRANT SELECT 
ON copa.*
TO thiago@localhost;







