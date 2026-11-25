CREATE DATABASE pet_mania;
USE pet_mania;


CREATE TABLE tutores (
    id_tutor INT AUTO_INCREMENT PRIMARY KEY,
    nome_completo VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    email VARCHAR(100),
    endereco VARCHAR(255)
);


CREATE TABLE pets (
    id_pet INT AUTO_INCREMENT PRIMARY KEY,
    id_tutor INT NOT NULL,
    nome VARCHAR(50) NOT NULL,
    especie VARCHAR(30) NOT NULL,
    raca VARCHAR(50) NOT NULL,
    porte ENUM('Pequeno', 'Médio', 'Grande') NOT NULL,
    sexo ENUM('Macho', 'Fêmea') NOT NULL,
    data_nascimento DATE,
    peso_kg DECIMAL(5,2), 
    observacoes TEXT,
    FOREIGN KEY (id_tutor) REFERENCES tutores(id_tutor) ON DELETE CASCADE
);

CREATE TABLE servicos (
    id_servico INT AUTO_INCREMENT PRIMARY KEY,
    nome_servico VARCHAR(100) NOT NULL,
    porte_aplicavel ENUM('Pequeno', 'Médio', 'Grande', 'Todos') NOT NULL,
    valor DECIMAL(10,2) NOT NULL
);

CREATE TABLE agendamentos (
    id_agendamento INT AUTO_INCREMENT PRIMARY KEY,
    id_tutor INT NOT NULL,
    id_pet INT NOT NULL,
    id_servico INT NOT NULL,
    data_hora DATETIME NOT NULL,
    status ENUM('Agendado', 'Cancelado', 'Em andamento', 'Concluido') DEFAULT 'Agendado',
    FOREIGN KEY (id_tutor) REFERENCES tutores(id_tutor),
    FOREIGN KEY (id_pet) REFERENCES pets(id_pet),
    FOREIGN KEY (id_servico) REFERENCES servicos(id_servico)
);

CREATE TABLE pagamentos (
    id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    id_agendamento INT NOT NULL,
    valor_pago DECIMAL(10,2) NOT NULL,
    forma_pagamento ENUM('Pix', 'Cartão de Crédito', 'Cartão de Débito', 'Dinheiro') NOT NULL,
    status_pagamento ENUM('Pendente', 'Pago', 'Estornado') DEFAULT 'Pendente',
    data_pagamento DATETIME,
    FOREIGN KEY (id_agendamento) REFERENCES agendamentos(id_agendamento)
);