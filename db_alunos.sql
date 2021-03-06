SELECT genero AS "GENERO: ", custo AS "CUSTOS MAIOR QUE A MÉDIA: " FROM filmes WHERE custo > (SELECT AVG(custo) FROM filmes) GROUP BY genero;

SELECT genero AS "GENERO", AVG(custo) AS "MEDIA CUSTO" FROM filmes WHERE genero = 'comedy';

`filmes`

/* drop table alunos;

/* DELETE aluno_cursos.alunos SET nome = 'Roger Felix' WHERE id_aluno = '7';

/* TODAS AS COLUNAS *//*
insert into alunos(id_aluno,nome,data_nascimento,endereco,cidade,estado,cpf)
	values('default','ROger','1993-08-27','rua yz','sao paulo','SP','10203054569'); */	



/* ----------------> NEXT PROJECT <---------------- */

CREATE DATABASE aluno_cursos;

/* CRIANDO TODAS AS TABELAS */	

CREATE TABLE alunos(
	id_aluno INT PRIMARY KEY NOT NULL AUTO_INCREMENT)
		
ALTER TABLE `alunos`
	ADD COLUMN `nome` VARCHAR(100) NOT NULL AFTER `alunos`,
	ADD COLUMN `data_nascimento` DATE NOT NULL AFTER `nome`,
	ADD COLUMN `endereco` VARCHAR(60) NOT NULL AFTER `data_nascimento`,
	ADD COLUMN `cidade` VARCHAR(60) NOT NULL AFTER `endereco`,
	ADD COLUMN `estado` VARCHAR(2) NOT NULL AFTER `cidade`,
	ADD COLUMN `cpf` VARCHAR(11) NOT NULL AFTER `estado`;
	
CREATE TABLE cursos(
	id_curso INT PRIMARY KEY NOT NULL AUTO_INCREMENT);	

ALTER TABLE `cursos`
	ADD COLUMN `nome` VARCHAR(80) NOT NULL AFTER `id_curso`;
	
	
CREATE TABLE notas(
	id_nota INT PRIMARY KEY NOT NULL AUTO_INCREMENT);	
	
ALTER TABLE `notas` 
ADD COLUMN `descricao_atividade` VARCHAR(90) NOT NULL AFTER `id_nota`,
ADD COLUMN `vlr_nota` DECIMAL(5,2) NOT NULL AFTER `descricao_atividade`,
ADD COLUMN `id_aluno_cursos` INT NOT NULL;


CREATE TABLE alunos_cursos(
	id_alunos_cursos INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	id_aluno INT NOT NULL,
	id_curso INT NOT NULL
);		
	


/* POVOANDO TODAS AS TABELAS */
INSERT INTO alunos (id_aluno,nome,data_nascimento,endereco,cidade,estado,cpf)
	VALUES ('default', 'Roger Felix','1993-08-27','R Antonio Quintiliano 99','Sao Paulo','SP','41526374859'),
	       ('default', 'Felipe Santos','1993-08-27','R Alberto Lonhoff 460','Rio de Janeiro','RJ','41526374858'),
	       ('default', 'Maria Aparecida','1993-08-27','R Osasco 12','Osasco','SP','41526374857'),
               ('default', 'Jose Fagundes','1993-08-27','R Bahia 44','Salvador','BA','41526374856'),
               ('default', 'Marcio Franco','1993-08-27','R Horizonte 21','Belo Horizonte','MG','41526374855'),
               ('default', 'Lazaro Barbosa','1993-08-27','R Lagos 15','Alagoas','AL','41526374854'),
               ('default', 'Stive Flakes','1993-08-27','R Parana 100','Paraná','PR','41526374853'),
               ('default', 'Marcos Antonio','1993-08-27','R riacho grande 10','Rio Grande do Sul','RS','41526374852'),
               ('default', 'Billy Harry','1993-08-27','R indio patachó 160','Amazonas','AM','41526374851'),
               ('default', 'Mariano Floriano','1993-08-27','R Acre 89','Acre','AC','41526374850'),
               ('default', 'Renan Monteiro','1993-08-27','Av Corruptos 100','Distrito Federal','DF','41526374800');

INSERT INTO cursos(id_curso, nome)
	VALUES('default','PHP'),
	      ('default','Laravel'),
	      ('default','Google Cloud'),
	      ('default','Java Script'),
	      ('default','codeigniter'),
              ('default','Python'),
	      ('default','MySQL');
		
INSERT INTO alunos_cursos(id_aluno,id_curso)
	VALUES('7','1'),		
	      ('8','2'),
	      ('9','3'),
	      ('10','4'),
	      ('11','5'),
	      ('12','6'),
	      ('13','7'),
	      ('14','3'),
	      ('15','4'),
	      ('16','5'),
	      ('17','6'),
	      ('7','7');
	      
INSERT INTO notas(descricao_atividade,vlr_nota,id_alunos_cursos)
	VALUES('Prova 1','9','112'),
	      ('Prova 1','10','123'),
	      ('Prova 1','5','114'),
	      ('exercicio 2','5','115'),
	      ('exercicio 2','5','116'),
	      ('Prova 2','6','117'),
	      ('Prova 3','6','118'),
	      ('Prova 3','7','119'),
	      ('Prova 4','7','120'),
	      ('exercicio 1','8','121'),
	      ('exercicio 1','8','122');

	      
	      
	
/* SELECT WITH ALIAS*/

SELECT A.id, A.nome AS "NOME_DO_ALUNO", 
C.id, C.nome AS "CURSO", 
N.id_alunos_cursos, N.vlr_nota AS "NOTA"
FROM alunos_cursos AC
INNER JOIN  alunos A ON A.id = AC.id_aluno
INNER JOIN cursos C ON C.id = AC.id_curso
INNER JOIN notas N ON N.id_alunos_cursos = AC.id



      
      
      
      
      
      
      
      /*alunos_cursos AC, 
      cursos C
where A.id = AC.id and 
      C.id = AC.id and 
      AC.id = N.id
















