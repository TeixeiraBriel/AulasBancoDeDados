use pokedex;
#QUESTÃO 1
SELECT MAX(total) FROM Pokemon;
SELECT MAX(hp) FROM Pokemon;
SELECT MAX(ataque) FROM Pokemon;
SELECT MAX(defesa) FROM Pokemon;
SELECT MAX(ataque_especial) FROM Pokemon;
SELECT MAX(defesa_especial) FROM Pokemon;
SELECT MAX(velocidade) FROM Pokemon;
SELECT MAX(taxa_captura) FROM Pokemon;

SELECT MIN(total) FROM Pokemon;
SELECT MIN(hp) FROM Pokemon;
SELECT MIN(ataque) FROM Pokemon;
SELECT MIN(defesa) FROM Pokemon;
SELECT MIN(ataque_especial) FROM Pokemon;
SELECT MIN(defesa_especial) FROM Pokemon;
SELECT MIN(velocidade) FROM Pokemon;
SELECT MIN(taxa_captura) FROM Pokemon;

#QUESTÃO 2
SELECT COUNT(DISTINCT cor) from pokemon;

#QUESTÃO 3
SELECT AVG(peso_kg) FROM pokemon;

#QUESTÃO 4
SELECT SUM(altura_m) FROM pokemon;

#QUESTÃO 5
SELECT COUNT(*) FROM pokemon;

#QUESTÃO 6
SELECT AVG(altura_m) FROM pokemon;

#QUESTÃO 7
SELECT STD(hp) FROM pokemon;

#QUESTÃO 8
SELECT COUNT(*) FROM pokemon where tipo2 <> "null";

#QUESTÃO 9
SELECT COUNT(DISTINCT tipo1) FROM pokemon;

#QUESTÃO 10
SELECT SUM(peso_kg) FROM pokemon;

#QUESTÃO 11
SELECT COUNT(*) FROM pokemon where lendario = 0;
SELECT COUNT(*) FROM pokemon where lendario <> 0;

#QUESTÃO 12
SELECT cor, COUNT(*) FROM pokemon GROUP BY cor ORDER BY cor DESC;

#QUESTÃO 13
SELECT tipo1, AVG(peso_kg), AVG(altura_m) FROM pokemon GROUP BY tipo1 ORDER BY AVG(altura_m) DESC, AVG(peso_kg) DESC;

#QUESTÃO 14
SELECT cor, AVG(taxa_captura) FROM pokemon GROUP BY cor;

#QUESTÃO 15
#SELECT tipo1, AVG(taxa_captura) FROM pokemon WHERE AVG(taxa_captura) > 100 GROUP BY tipo1;
SELECT tipo1, AVG(taxa_captura) FROM pokemon GROUP BY tipo1 ORDER BY AVG(taxa_captura) DESC LIMIT 9;

#QUESTÃO 16
SELECT cor, AVG(total) FROM pokemon WHERE lendario = 0 GROUP BY cor ORDER BY AVG(total) ASC LIMIT 2;


#QUESTÃO 17
SELECT geracao, MAX(total) FROM pokemon GROUP BY geracao;

#QUESTÃO 18
SELECT geracao, COUNT(*) FROM pokemon WHERE lendario = 1 GROUP BY geracao;

#QUESTÃO 19
SELECT geracao, COUNT(*), AVG(taxa_captura) FROM pokemon WHERE tipo1 <> "null" AND tipo2 <> "null" GROUP BY geracao;

#QUESTÃO 20
SELECT geracao, COUNT(DISTINCT cor) FROM pokemon WHERE lendario <> 0 GROUP BY geracao;