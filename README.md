🐾 Pet Mania - Banco de Dados
Bem-vindo ao repositório do banco de dados do Pet Mania, um sistema relacional desenvolvido em MySQL para o gerenciamento de um pet shop. O sistema centraliza o cadastro de clientes (tutores), seus animais de estimação, o catálogo de serviços oferecidos, além do controle de agendamentos e pagamentos.

🛠️ Tecnologias Utilizadas
SGBD: MySQL / MariaDB

Linguagem: SQL (DDL)

📋 Estrutura do Banco de Dados (Schema)
O banco de dados é composto por 5 tabelas principais que se relacionam para garantir a integridade dos dados:

tutores: Armazena as informações de cadastro dos donos dos pets (nome, CPF, contato e endereço).

pets: Guarda os dados dos animais vinculados aos seus respectivos tutores (espécie, raça, porte, sexo, peso, entre outros).

servicos: Lista os serviços disponíveis no pet shop (como banho, tosa, consulta) com seus respectivos valores e portes aplicáveis.

agendamentos: Gerencia a agenda de atendimento, relacionando tutor, pet, serviço escolhido, data/hora e o status atual.

pagamentos: Controla as transações financeiras vinculadas aos agendamentos (formas de pagamento, valores e status da cobrança).

📊 Diagrama de Relacionamento (Resumo)
tutores 1:N pets (Um tutor pode ter vários pets)

tutores 1:N agendamentos

pets 1:N agendamentos (Um pet pode ter vários agendamentos ao longo do tempo)

servicos 1:N agendamentos

agendamentos 1:1 ou 1:N pagamentos (Vinculação direta com a transação financeira)

🚀 Como Usar
Certifique-se de ter um servidor MySQL instalado (como XAMPP, WampServer ou Docker).

Abra a sua ferramenta de gerenciamento de banco de dados preferida (MySQL Workbench, DBeaver, HeidiSQL, etc.).

Execute o script SQL fornecido para criar o banco de dados e as tabelas:

SQL


CREATE DATABASE pet_mania;
USE pet_mania;



-- Cole o restante do código das tabelas aqui
💡 Contribuindo
Sinta-se à vontade para abrir issues ou enviar pull requests com melhorias, novos campos, procedures ou índices para otimização da performance.
