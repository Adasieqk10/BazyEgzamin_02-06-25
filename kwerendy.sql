/* 1. Policz ile jest samochodów marki opel z tabeli samochody */
SELECT COUNT(*) FROM samochody WHERE samochody.MARKA = "Opel"; 

/* 2. Wyświetl imię i nazwisko klienta który wypożyczył samochód 2006-01-01 (relacja). */
SELECT klienci.IMIE, klienci.NAZWISKO FROM klienci NATURAL JOIN wypozyczenia WHERE wypozyczenia.DATA_WYP = "2006-01-01"; 

/* 3. Wyświetl samochody wyprodukowane w Niemczech i których dzienny koszt jest większy niż
20. */
SELECT * FROM samochody WHERE samochody.KRAJ_PROD = "Niemcy" AND samochody.KOSZT_DNIA > 20;

/* 4. Dodaj użytkownika „wypozyczajacy” z hasłem zaq1@WSX. */
CREATE USER 'wypozyczajacy'@'127.0.0.1' IDENTIFIED BY 'zaq1@WSX';

/* 5. Wyświetl imię, nazwisko, marka, model, nr_rej, data_wyp, data_zw i koszt dla wszystkich
samochodów, klientów i wypożyczeń (relacja między trzema tabelami). */
SELECT klienci.IMIE, klienci.NAZWISKO, samochody.MARKA, samochody.MODEL, samochody.NR_REJ, wypozyczenia.DATA_WYP, wypozyczenia.DATA_ZWR, wypozyczenia.KOSZT FROM samochody NATURAL JOIN wypozyczenia NATURAL JOIN klienci;

/* 6. Dodaj funkcję automatycznej numeracji dla kolumny id_wyp w tabeli wypożyczenia */ 
ALTER TABLE wypozyczenia CHANGE ID_WYP ID_WYP INT NOT NULL AUTO_INCREMENT;

/* 7. Wstaw do tabeli wypożyczenie – id_kli = 100, id_sam = 15, data_wyp = dziś, data_zwr = za
miesiąc i koszt 1000 */
INSERT INTO `wypozyczenia` (`ID_WYP`, `ID_SAM`, `ID_KLI`, `DATA_WYP`, `DATA_ZWR`, `KOSZT`) VALUES (NULL, '15', '100', '2025-05-13', '2025-06-13', NULL); 

/* 8. Policz ile jest wszystkich samochodów. */
SELECT COUNT(*) FROM samochody;