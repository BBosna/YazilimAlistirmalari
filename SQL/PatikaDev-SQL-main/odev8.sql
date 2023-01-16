--test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.

CREATE TABLE employee(
 id SERIAL PRIMARY KEY,
 name VARCHAR(50),
 birthday DATE,
 email VARCHAR(100)
);
--Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
insert into employee (name, birthday, email) values ('Nicholle', null, 'nploughwright0@china.com.cn');
insert into employee (name, birthday, email) values ('Kevon', '1920-12-30', 'kbruyet1@comcast.net');
insert into employee (name, birthday, email) values ('Ivan', '1931-12-22', 'igregan2@google.co.jp');
insert into employee (name, birthday, email) values ('Jan', '1902-05-23', 'jborgnol3@google.ru');
insert into employee (name, birthday, email) values ('Ford', '1997-12-12', 'ftessington4@1und1.de');
insert into employee (name, birthday, email) values ('Mitch', '1966-06-01', 'mdukes5@state.gov');
insert into employee (name, birthday, email) values ('Pancho', '1930-05-16', 'pklesse6@cocolog-nifty.com');
insert into employee (name, birthday, email) values ('Candace', null, 'clangelay7@livejournal.com');
insert into employee (name, birthday, email) values ('Salvatore', '1901-05-09', 'savrahamy8@washingtonpost.com');
insert into employee (name, birthday, email) values ('Archer', '1906-09-21', 'amaylour9@moonfruit.com');
insert into employee (name, birthday, email) values ('Gabrielle', '1950-10-24', 'gmarklowa@umich.edu');
insert into employee (name, birthday, email) values ('Cy', '1911-05-06', null);
insert into employee (name, birthday, email) values ('Stan', '1917-01-17', 'sbaseyc@dedecms.com');
insert into employee (name, birthday, email) values ('Krista', '1970-06-19', 'kwaned@cnn.com');
insert into employee (name, birthday, email) values ('Nonnah', '1939-12-23', 'ndoghartiee@samsung.com');
insert into employee (name, birthday, email) values ('Rog', '1924-03-02', 'rmyrkusf@comcast.net');
insert into employee (name, birthday, email) values ('Liana', '1920-12-13', null);
insert into employee (name, birthday, email) values ('Tommie', '1950-12-10', 'tgreenliesh@uol.com.br');
insert into employee (name, birthday, email) values ('Uriah', null, null);
insert into employee (name, birthday, email) values ('Alaric', '1946-11-09', 'alunbechj@merriam-webster.com');
insert into employee (name, birthday, email) values ('Mitchel', '1946-12-02', 'mcindereyk@qq.com');
insert into employee (name, birthday, email) values ('Zolly', null, 'zlavarackl@addtoany.com');
insert into employee (name, birthday, email) values ('Zora', '1926-10-29', 'zlaytonm@ask.com');
insert into employee (name, birthday, email) values ('Howie', '1918-05-06', 'halenovn@oakley.com');
insert into employee (name, birthday, email) values ('Ulrika', null, 'uramsbyo@forbes.com');
insert into employee (name, birthday, email) values ('Osgood', null, 'ojacopp@homestead.com');
insert into employee (name, birthday, email) values ('Enid', '1931-05-18', 'edrippq@amazonaws.com');
insert into employee (name, birthday, email) values ('Ethelda', '1987-04-02', 'enapperr@time.com');
insert into employee (name, birthday, email) values ('Trent', '1907-06-11', 'trobertazzis@census.gov');
insert into employee (name, birthday, email) values ('Hanny', '1947-06-21', 'hwigant@amazon.com');
insert into employee (name, birthday, email) values ('Carolynn', null, null);
insert into employee (name, birthday, email) values ('Scot', '1958-09-18', 'sbattrickv@cnet.com');
insert into employee (name, birthday, email) values ('Marcello', '1961-05-11', 'mbritcherw@sun.com');
insert into employee (name, birthday, email) values ('Friedrick', '1944-03-28', 'fdevonx@va.gov');
insert into employee (name, birthday, email) values ('Jenilee', '1923-08-29', 'jickey@yandex.ru');
insert into employee (name, birthday, email) values ('Gui', '1924-04-09', null);
insert into employee (name, birthday, email) values ('Bondon', '1912-10-03', null);
insert into employee (name, birthday, email) values ('Nora', '1988-08-27', 'nhaimes11@bluehost.com');
insert into employee (name, birthday, email) values ('Lettie', '1924-01-29', 'lspare12@illinois.edu');
insert into employee (name, birthday, email) values ('Alexi', '1995-05-20', 'abellamy13@google.it');
insert into employee (name, birthday, email) values ('Estrella', '1965-11-18', 'emoro14@edublogs.org');
insert into employee (name, birthday, email) values ('Lane', '1910-01-10', 'lmirrlees15@bloomberg.com');
insert into employee (name, birthday, email) values ('Crawford', '1937-10-11', 'ctrudgian16@ovh.net');
insert into employee (name, birthday, email) values ('Evelyn', '1961-02-11', 'eratlee17@facebook.com');
insert into employee (name, birthday, email) values ('Heddi', '1913-09-16', 'hlisciandro18@webeden.co.uk');
insert into employee (name, birthday, email) values ('Mario', '1940-06-18', null);
insert into employee (name, birthday, email) values ('Parsifal', '1986-01-16', null);
insert into employee (name, birthday, email) values ('Hewett', null, 'hkix1b@pagesperso-orange.fr');
insert into employee (name, birthday, email) values ('Justino', '1928-05-08', 'jonions1c@simplemachines.org');
insert into employee (name, birthday, email) values ('Allene', '1961-01-23', 'alieb1d@nifty.com');

--Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.

UPDATE employee
SET
    name = 'Bedirhan',
    email = 'selamselam@selam.com'
    
WHERE id ='21'
RETURNING *;

UPDATE employee
SET
    name = '',
    birthday = '1920-01-01'
    
WHERE name ILIKE '%a'
RETURNING *;

UPDATE employee
SET
    name = 'NONAME',
    email = ''
    
WHERE name = ''
RETURNING *;

UPDATE employee
SET
    birthday = '1980-01-01'
WHERE birthday < '1980-01-01'
RETURNING * ;


UPDATE employee
SET
    name = ''
WHERE name LIKE '%Z';


--Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.

DELETE FROM employee
WHERE id = 25
RETURNING *;

DELETE FROM employee
WHERE birthday < '1980-01-01'
RETURNING *;

DELETE FROM employee
WHERE name ILIKE '%Z'
RETURNING * ;

DELETE FROM employee
WHERE id >'40' 
RETURNING *;

DELETE FROM employee
WHERE id>'10' and name ILIKE '%s'
RETURNING * ;
