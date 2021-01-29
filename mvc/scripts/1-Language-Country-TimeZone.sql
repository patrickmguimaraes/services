--------------------------------LANGUAGE--------------------------------
INSERT INTO SVZ98608.Language (name, internationalName, code, status) VALUES ('Português', 'Portuguese', 'PT', 1);
INSERT INTO SVZ98608.Language (name, internationalName, code, status) VALUES ('English', 'English', 'EN', 1);
INSERT INTO SVZ98608.Language (name, internationalName, code, status) VALUES ('Español', 'Spanish', 'ES', 1);
INSERT INTO SVZ98608.Language (name, internationalName, code, status) VALUES ('Français', 'French', 'FR', 1);
--------------------------------LANGUAGE--------------------------------

--------------------------------COUNTRY--------------------------------
INSERT INTO SVZ98608.Country (name, internationalName, abbreviation, status) VALUES ('Brasil', 'Brazil', 'BR', 1);
UPDATE SVZ98608.Country fkLanguage SET (SELECT pkLanguage FROM SVZ98608.Language WHERE code 'PT') WHERE fkLanguage = null;
--------------------------------COUNTRY--------------------------------

--------------------------------TIME ZONE--------------------------------
INSERT INTO SVZ98608.TimeZone (name, time, status) VALUES ('Fernando de Noronha', -2, 1);
INSERT INTO SVZ98608.TimeZone (name, time, status) VALUES ('Salvador', -3, 1);
INSERT INTO SVZ98608.TimeZone (name, time, status) VALUES ('Brasília', -3, 1);
INSERT INTO SVZ98608.TimeZone (name, time, status) VALUES ('Belém', -3, 1);
INSERT INTO SVZ98608.TimeZone (name, time, status) VALUES ('Manaus', -4, 1);
INSERT INTO SVZ98608.TimeZone (name, time, status) VALUES ('Rio Branco', -5, 1);
--------------------------------TIME ZONE--------------------------------