CREATE DATABASE bdPessoa

USE bdPessoa

SELECT * FROM tbPessoa

/*1*/
SELECT uf AS 'Unidade Federativa',
COUNT(uf) AS 'Quantidade'
FROM tbPessoa GROUP BY uf

/*2*/
SELECT uf AS 'Unidade Federativa', SUM(idade) AS 'soma por cada UF'
FROM tbPessoa GROUP BY uf

/*3*/
SELECT uf AS 'Unidade Federativa',
AVG(idade) as 'Média'
FROM tbPessoa GROUP BY uf ORDER BY AVG(idade) DESC

/*4*/
SELECT uf AS 'Unidade Federativa',
MAX(idade) AS 'Máximo', MIN(idade) AS 'Mínino' 
FROM tbPessoa
group BY uf
ORDER BY MIN(idade), MAX(idade) ASC

/*5*/
SELECT uf, sexo, COUNT(sexo) AS 'Quantidadede cadastros'
FROM tbPessoa
GROUP BY uf, sexo
ORDER BY uf DESC