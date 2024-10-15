# sistema-informatizacao-lojadevinhos
Este projeto foi desenvolvido para informatizar as informações de vinhos, vinícolas e regiões de uma loja de vinhos. O sistema permite o cadastro e consulta de dados sobre vinhos e suas vinícolas, facilitando a gestão e o acesso a informações relevantes.

🎯 Funcionalidades

	•	Cadastro de Vinhos: Cada vinho é registrado com nome, tipo, ano de produção, descrição e a vinícola responsável por sua produção.
	•	Cadastro de Vinícolas: Inclui informações sobre o nome, descrição, telefone, email e a região à qual a vinícola pertence.
	•	Cadastro de Regiões: Armazena os nomes e descrições das regiões.
	•	Consultas Avançadas: Listagem de vinhos com seu nome, ano de produção, a vinícola e a região correspondente.
	•	Controle de Acesso: Criação de um usuário específico com permissões limitadas para consulta de informações.

📊 Modelagem de Dados

🛠 Modelo Conceitual
O modelo conceitual, representando as entidades principais:

	•	Vinho: Armazena nome, tipo, ano, descrição e vinícola.
	•	Vinícola: Armazena nome, descrição, telefone, email e região.
	•	Região: Armazena o nome e o descritivo da região.

🗂 Modelo Lógico
O modelo lógico foi implementado para garantir as integridades referenciais entre vinhos, vinícolas e regiões.

🛢 Modelo Físico
O modelo físico foi implementado em MySQL e contém as seguintes tabelas:

	•	Vinhos (id_vinho, nome, tipo, ano, descricao, id_vinicola)
	•	Vinícolas (id_vinicola, nome, descricao, telefone, email, id_regiao)
	•	Regiões (id_regiao, nome, descricao)

📥 Inserção de Dados
Foram inseridos pelo menos 5 registros em cada tabela, mantendo as integridades referenciais entre vinhos, vinícolas e regiões.

🔍 Consulta Avançada

🔑 Controle de Acesso
Foi criado um usuário chamado Somellier, que tem as seguintes permissões:

	•	Permissão de SELECT para a tabela Vinhos.
	•	Permissão de SELECT para os campos codVinicula e nomeVinicula da tabela Vinícolas.
	•	O usuário pode realizar no máximo 40 consultas por hora.

 🚀 Tecnologias Utilizadas

	•	BrModelo para modelagem conceitual.
	•	MySQL Workbench para modelagem lógica.
	•	MySQL para implementação do modelo físico e consultas SQL.
