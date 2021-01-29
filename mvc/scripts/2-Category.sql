--------------------CATEGORY--------------------
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('1','Serviços de informática e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('1.01','Análise e desenvolvimento de sistemas', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('1.02','Programação', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('1.03','Processamento de dados e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('1.04','Elaboração de programas de computadores, inclusive de jogos eletrônicos', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('1.03','Processamento, armazenamento ou hospedagem de dados, textosns, vídeos, páginas eletrônicas, aplicativos e sistemas de informação, entre outros formatos, e congêneres.', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('1.04','Elaboração de programas de computadores, inclusive de jogos eletrônicos, independentemente da arquitetura construtiva da máquina em que o programa será executado, incluindo tablets, smartphones e congêneres.', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('1.05','Licenciamento ou cessão de direito de uso de programas de computação', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('1.06','Assessoria e consultoria em informática', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('1.07','Suporte técnico em informática, inclusive instalação, configuração e manutenção de programas de computação e bancos de dados', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('1.08','Planejamento, confecção, manutenção e atualização de páginas eletrônicas', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('1.09','Disponibilização, sem cessão definitiva, de conteúdos de áudio, vídeom e texto por meio da internet, respeitada a imunidade de livros, jornais e periódicos (exceto a distribuição de conteúdos pelas prestadoras de Serviço de Acesso Condicionado, de que trata a Lei no 12.485, de 12 de setembro de 2011, sujeita ao ICMS).  (Incluído pela Lei Complementar nº 157, de 2016', 1);
UPDATE SVZ98608.Category SET image = '/images/category/BR/01.png' WHERE image = null;
UPDATE SVZ98608.Category SET fkCategory = (SELECT DISTINCT pkCategory FROM SVZ98608.Category WHERE fkCategory = null ORDER BY pkCategory ASC) WHERE image = null;

INSERT INTO SVZ98608.Category (code, name, status) VALUES ('2','Serviços de pesquisas e desenvolvimento de qualquer natureza', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('2.01','Serviços de pesquisas e desenvolvimento de qualquer natureza', 1);
UPDATE SVZ98608.Category SET image = '/images/category/BR/02.png' WHERE image = null;
UPDATE SVZ98608.Category SET fkCategory = (SELECT DISTINCT pkCategory FROM SVZ98608.Category WHERE fkCategory = null ORDER BY pkCategory ASC) WHERE image = null;

INSERT INTO SVZ98608.Category (code, name, status) VALUES ('3','Serviços prestados mediante locação, cessão de direito de uso e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('3.01','  (VETADO', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('3.02','Cessão de direito de uso de marcas e de sinais de propaganda', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('3.03','Exploração de salões de festas, centro de convenções, escritórios virtuais, stands, quadras esportivas, estádios, ginásios, auditórios, casas de espetáculos, parques de diversões, canchas e congêneres, para realização de eventos ou negócios de qualquer natureza', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('3.04','Locação, sublocação, arrendamento, direito de passagem ou permissão de uso, compartilhado ou não, de ferrovia, rodovia, postes, cabos, dutos e condutos de qualquer natureza', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('3.05','Cessão de andaimes, palcos, coberturas e outras estruturas de uso temporário', 1);
UPDATE SVZ98608.Category SET image = '/images/category/BR/03.png' WHERE image = null;
UPDATE SVZ98608.Category SET fkCategory = (SELECT DISTINCT pkCategory FROM SVZ98608.Category WHERE fkCategory = null ORDER BY pkCategory ASC) WHERE image = null;

INSERT INTO SVZ98608.Category (code, name, status) VALUES ('4','Serviços de saúde, assistência médica e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('4.01','Medicina e biomedicina', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('4.02','Análises clínicas, patologia, eletricidade médica, radioterapia, quimioterapia, ultra-sonografia, ressonância magnética, radiologia, tomografia e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('4.03','Hospitais, clínicas, laboratórios, sanatórios, manicômios, casas de saúde, prontos-socorros, ambulatórios e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('4.04','Instrumentação cirúrgica', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('4.05','Acupuntura', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('4.06','Enfermagem, inclusive serviços auxiliares', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('4.07','Serviços farmacêuticos', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('4.08','Terapia ocupacional, fisioterapia e fonoaudiologia', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('4.09','Terapias de qualquer espécie destinadas ao tratamento físico, orgânico e mental', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('4.10','Nutrição', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('4.11','Obstetrícia', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('4.12','Odontologia', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('4.13','Ortóptica', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('4.14','Próteses sob encomenda', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('4.15','Psicanálise', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('4.16','Psicologia', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('4.17','Casas de repouso e de recuperação, creches, asilos e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('4.18','Inseminação artificial, fertilização in vitro e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('4.19','Bancos de sangue, leite, pele, olhos, óvulos, sêmen e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('4.20','Coleta de sangue, leite, tecidos, sêmen, órgãos e materiais biológicos de qualquer espécie', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('4.21','Unidade de atendimento, assistência ou tratamento móvel e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('4.22','Planos de medicina de grupo ou individual e convênios para prestação de assistência médica, hospitalar, odontológica e congêneres.  (Vide Lei Complementar nº 175, de 2020', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('4.23','Outros planos de saúde que se cumpram através de serviços de terceiros contratados, credenciados, cooperados ou apenas pagos pelo operador do plano mediante indicação do beneficiário.  (Vide Lei Complementar nº 175, de 2020', 1);
UPDATE SVZ98608.Category SET image = '/images/category/BR/04.png' WHERE image = null;
UPDATE SVZ98608.Category SET fkCategory = (SELECT DISTINCT pkCategory FROM SVZ98608.Category WHERE fkCategory = null ORDER BY pkCategory ASC) WHERE image = null;

INSERT INTO SVZ98608.Category (code, name, status) VALUES ('5','Serviços de medicina e assistência veterinária e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('5.01','Medicina veterinária e zootecnia', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('5.02','Hospitais, clínicas, ambulatórios, prontos-socorros e congêneres, na área veterinária', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('5.03','Laboratórios de análise na área veterinária', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('5.04','Inseminação artificial, fertilização in vitro e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('5.05','Bancos de sangue e de órgãos e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('5.06','Coleta de sangue, leite, tecidos, sêmen, órgãos e materiais biológicos de qualquer espécie', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('5.07','Unidade de atendimento, assistência ou tratamento móvel e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('5.08','Guarda, tratamento, amestramento, embelezamento, alojamento e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('5.09','Planos de atendimento e assistência médico-veterinária.  (Vide Lei Complementar nº 175, de 2020', 1);
UPDATE SVZ98608.Category SET image = '/images/category/BR/05.png' WHERE image = null;
UPDATE SVZ98608.Category SET fkCategory = (SELECT DISTINCT pkCategory FROM SVZ98608.Category WHERE fkCategory = null ORDER BY pkCategory ASC) WHERE image = null;

INSERT INTO SVZ98608.Category (code, name, status) VALUES ('6','Serviços de cuidados pessoais, estética, atividades físicas e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('6.01','Barbearia, cabeleireiros, manicuros, pedicuros e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('6.02','Esteticistas, tratamento de pele, depilação e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('6.03','Banhos, duchas, sauna, massagens e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('6.04','Ginástica, dança, esportes, natação, artes marciais e demais atividades físicas', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('6.05','Centros de emagrecimento, spa e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('6.06','Aplicação de tatuagens, piercings e congêneres.  (Incluído pela Lei Complementar nº 157, de 2016', 1);
UPDATE SVZ98608.Category SET image = '/images/category/BR/06.png' WHERE image = null;
UPDATE SVZ98608.Category SET fkCategory = (SELECT DISTINCT pkCategory FROM SVZ98608.Category WHERE fkCategory = null ORDER BY pkCategory ASC) WHERE image = null;

INSERT INTO SVZ98608.Category (code, name, status) VALUES ('7','Serviços relativos a engenharia, arquitetura, geologia, urbanismo, construção civil, manutenção, limpeza, meio ambiente, saneamento e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('7.01','Engenharia, agronomia, agrimensura, arquitetura, geologia, urbanismo, paisagismo e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('7.02','Execução, por administração, empreitada ou subempreitada, de obras de construção civil, hidráulica ou elétrica e de outras obras semelhantes, inclusive sondagem, perfuração de poços, escavação, drenagem e irrigação, terraplanagem, pavimentação, concretagem e a instalação e montagem de produtos, peças e equipamentos (exceto o fornecimento de mercadorias produzidas pelo prestador de serviços fora do local da prestação dos serviços, que fica sujeito ao ICMS)', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('7.03','Elaboração de planos diretores, estudos de viabilidade, estudos organizacionais e outros, relacionados com obras e serviços de engenharia; elaboração de anteprojetos, projetos básicos e projetos executivos para trabalhos de engenharia', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('7.04','Demolição', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('7.05','Reparação, conservação e reforma de edifícios, estradas, pontes, portos e congêneres (exceto o fornecimento de mercadorias produzidas pelo prestador dos serviços, fora do local da prestação dos serviços, que fica sujeito ao ICMS)', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('7.06','Colocação e instalação de tapetes, carpetes, assoalhos, cortinas, revestimentos de parede, vidros, divisórias, placas de gesso e congêneres, com material fornecido pelo tomador do serviço', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('7.07','Recuperação, raspagem, polimento e lustração de pisos e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('7.08','Calafetação', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('7.09','Varrição, coleta, remoção, incineração, tratamento, reciclagem, separação e destinação final de lixo, rejeitos e outros resíduos quaisquer', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('7.10','Limpeza, manutenção e conservação de vias e logradouros públicos, imóveis, chaminés, piscinas, parques, jardins e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('7.11','Decoração e jardinagem, inclusive corte e poda de árvores', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('7.12','Controle e tratamento de efluentes de qualquer natureza e de agentes físicos, químicos e biológicos', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('7.13','Dedetização, desinfecção, desinsetização, imunização, higienização, desratização, pulverização e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('7.14','  (VETADO', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('7.15','  (VETADO', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('7.16','Florestamento, reflorestamento, semeadura, adubação e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('7.16','Florestamento, reflorestamento, semeadura, adubação, reparação de solo, plantio, silagem, colheita, corte e descascamento de árvores, silvicultura, exploração florestal e dos serviços congêneres indissociáveis da formação, manutenção e colheita de florestas, para quaisquer fins e por quaisquer meios. ', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('7.17','Escoramento, contenção de encostas e serviços congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('7.18','Limpeza e dragagem de rios, portos, canais, baías, lagos, lagoas, represas, açudes e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('7.19','Acompanhamento e fiscalização da execução de obras de engenharia, arquitetura e urbanismo', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('7.20','Aerofotogrametria (inclusive interpretação), cartografia, mapeamento, levantamentos topográficos, batimétricos, geográficos, geodésicos, geológicos, geofísicos e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('7.21','Pesquisa, perfuração, cimentação, mergulho, perfilagem, concretação, testemunhagem, pescaria, estimulação e outros serviços relacionados com a exploração e explotação de petróleo, gás natural e de outros recursos minerais', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('7.22','Nucleação e bombardeamento de nuvens e congêneres', 1);
UPDATE SVZ98608.Category SET image = '/images/category/BR/07.png' WHERE image = null;
UPDATE SVZ98608.Category SET fkCategory = (SELECT DISTINCT pkCategory FROM SVZ98608.Category WHERE fkCategory = null ORDER BY pkCategory ASC) WHERE image = null;

INSERT INTO SVZ98608.Category (code, name, status) VALUES ('8','Serviços de educação, ensino, orientação pedagógica e educacional, instrução, treinamento e avaliação pessoal de qualquer grau ou natureza', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('8.01','Ensino regular pré-escolar, fundamental, médio e superior', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('8.02','Instrução, treinamento, orientação pedagógica e educacional, avaliação de conhecimentos de qualquer natureza', 1);
UPDATE SVZ98608.Category SET image = '/images/category/BR/08.png' WHERE image = null;
UPDATE SVZ98608.Category SET fkCategory = (SELECT DISTINCT pkCategory FROM SVZ98608.Category WHERE fkCategory = null ORDER BY pkCategory ASC) WHERE image = null;

INSERT INTO SVZ98608.Category (code, name, status) VALUES ('9','Serviços relativos a hospedagem, turismo, viagens e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('9.01','Hospedagem de qualquer natureza em hotéis, apart-service condominiais, flat, apart-hotéis, hotéis residência, residence-service, suite service, hotelaria marítima, motéis, pensões e congêneres; ocupação por temporada com fornecimento de serviço (o valor da alimentação e gorjeta, quando incluído no preço da diária, fica sujeito ao Imposto Sobre Serviços)', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('9.02','Agenciamento, organização, promoção, intermediação e execução de programas de turismo, passeios, viagens, excursões, hospedagens e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('9.03','Guias de turismo', 1);
UPDATE SVZ98608.Category SET image = '/images/category/BR/09.png' WHERE image = null;
UPDATE SVZ98608.Category SET fkCategory = (SELECT DISTINCT pkCategory FROM SVZ98608.Category WHERE fkCategory = null ORDER BY pkCategory ASC) WHERE image = null;

INSERT INTO SVZ98608.Category (code, name, status) VALUES ('10','Serviços de intermediação e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('10.01','Agenciamento, corretagem ou intermediação de câmbio, de seguros, de cartões de crédito, de planos de saúde e de planos de previdência privada', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('10.02','Agenciamento, corretagem ou intermediação de títulos em geral, valores mobiliários e contratos quaisquer', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('10.03','Agenciamento, corretagem ou intermediação de direitos de propriedade industrial, artística ou literária', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('10.04','Agenciamento, corretagem ou intermediação de contratos de arrendamento mercantil (leasing), de franquia (franchising) e de faturização (factoring)', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('10.05','Agenciamento, corretagem ou intermediação de bens móveis ou imóveis, não abrangidos em outros itens ou subitens, inclusive aqueles realizados no âmbito de Bolsas de Mercadorias e Futuros, por quaisquer meios', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('10.06','Agenciamento marítimo', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('10.07','Agenciamento de notícias', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('10.08','Agenciamento de publicidade e propaganda, inclusive o agenciamento de veiculação por quaisquer meios', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('10.09','Representação de qualquer natureza, inclusive comercial', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('10.10','Distribuição de bens de terceiros', 1);
UPDATE SVZ98608.Category SET image = '/images/category/BR/10.png' WHERE image = null;
UPDATE SVZ98608.Category SET fkCategory = (SELECT DISTINCT pkCategory FROM SVZ98608.Category WHERE fkCategory = null ORDER BY pkCategory ASC) WHERE image = null;

INSERT INTO SVZ98608.Category (code, name, status) VALUES ('11','Serviços de guarda, estacionamento, armazenamento, vigilância e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('11.01','Guarda e estacionamento de veículos terrestres automotores, de aeronaves e de embarcações', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('11.02','Vigilância, segurança ou monitoramento de bens e pessoas', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('11.02','Vigilância, segurança ou monitoramento de bens, pessoas e semoventes.', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('11.03','Escolta, inclusive de veículos e cargas', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('11.04','Armazenamento, depósito, carga, descarga, arrumação e guarda de bens de qualquer espécie', 1);
UPDATE SVZ98608.Category SET image = '/images/category/BR/11.png' WHERE image = null;
UPDATE SVZ98608.Category SET fkCategory = (SELECT DISTINCT pkCategory FROM SVZ98608.Category WHERE fkCategory = null ORDER BY pkCategory ASC) WHERE image = null;

INSERT INTO SVZ98608.Category (code, name, status) VALUES ('12','Serviços de diversões, lazer, entretenimento e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('12.01','Espetáculos teatrais', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('12.02','Exibições cinematográficas', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('12.03','Espetáculos circenses', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('12.04','Programas de auditório', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('12.05','Parques de diversões, centros de lazer e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('12.06','Boates, taxi-dancing e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('12.07','Shows, ballet, danças, desfiles, bailes, óperas, concertos, recitais, festivais e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('12.08','Feiras, exposições, congressos e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('12.09','Bilhares, boliches e diversões eletrônicas ou não', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('12.10','Corridas e competições de animais', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('12.11','Competições esportivas ou de destreza física ou intelectual, com ou sem a participação do espectador', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('12.12','Execução de música', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('12.13','Produção, mediante ou sem encomenda prévia, de eventos, espetáculos, entrevistas, shows, ballet, danças, desfiles, bailes, teatros, óperas, concertos, recitais, festivais e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('12.14','Fornecimento de música para ambientes fechados ou não, mediante transmissão por qualquer processo', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('12.15','Desfiles de blocos carnavalescos ou folclóricos, trios elétricos e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('12.16','Exibição de filmes, entrevistas, musicais, espetáculos, shows, concertos, desfiles, óperas, competições esportivas, de destreza intelectual ou congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('12.17','Recreação e animação, inclusive em festas e eventos de qualquer natureza', 1);
UPDATE SVZ98608.Category SET image = '/images/category/BR/12.png' WHERE image = null;
UPDATE SVZ98608.Category SET fkCategory = (SELECT DISTINCT pkCategory FROM SVZ98608.Category WHERE fkCategory = null ORDER BY pkCategory ASC) WHERE image = null;

INSERT INTO SVZ98608.Category (code, name, status) VALUES ('13','Serviços relativos a fonografia, fotografia, cinematografia e reprografia', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('13.01','  (VETADO', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('13.02','Fonografia ou gravação de sons, inclusive trucagem, dublagem, mixagem e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('13.03','Fotografia e cinematografia, inclusive revelação, ampliação, cópia, reprodução, trucagem e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('13.04','Reprografia, microfilmagem e digitalização', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('13.05','Composição gráfica, fotocomposição, clicheria, zincografia, litografia, fotolitografia', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('13.05','Composição gráfica, inclusive confecção de impressos gráficos, fotocomposição, clicheria, zincografia, litografia e fotolitografia, exceto se destinados a posterior operação de comercialização ou industrialização, ainda que incorporados, de qualquer forma, a outra mercadoria que deva ser objeto de posterior circulação, tais como bulas, rótulos, etiquetas, caixas, cartuchos, embalagens e manuais técnicos e de instrução, quando ficarão sujeitos ao ICMS. ', 1);
UPDATE SVZ98608.Category SET image = '/images/category/BR/13.png' WHERE image = null;
UPDATE SVZ98608.Category SET fkCategory = (SELECT DISTINCT pkCategory FROM SVZ98608.Category WHERE fkCategory = null ORDER BY pkCategory ASC) WHERE image = null;

INSERT INTO SVZ98608.Category (code, name, status) VALUES ('14','Serviços relativos a bens de terceiros', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('14.01','Lubrificação, limpeza, lustração, revisão, carga e recarga, conserto, restauração, blindagem, manutenção e conservação de máquinas, veículos, aparelhos, equipamentos, motores, elevadores ou de qualquer objeto (exceto peças e partes empregadas, que ficam sujeitas ao ICMS)', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('14.02','Assistência técnica', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('14.03','Recondicionamento de motores (exceto peças e partes empregadas, que ficam sujeitas ao ICMS)', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('14.04','Recauchutagem ou regeneração de pneus', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('14.05','Restauração, recondicionamento, acondicionamento, pintura, beneficiamento, lavagem, secagem, tingimento, galvanoplastia, anodização, corte, recorte, polimento, plastificação e congêneres, de objetos quaisquer', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('14.05','Restauração, recondicionamento, acondicionamento, pintura, beneficiamento, lavagem, secagem, tingimento, galvanoplastia, anodização, corte, recorte, plastificação, costura, acabamento, polimento e congêneres de objetos quaisquer. ', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('14.06','Instalação e montagem de aparelhos, máquinas e equipamentos, inclusive montagem industrial, prestados ao usuário final, exclusivamente com material por ele fornecido', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('14.07','Colocação de molduras e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('14.08','Encadernação, gravação e douração de livros, revistas e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('14.09','Alfaiataria e costura, quando o material for fornecido pelo usuário final, exceto aviamento', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('14.10','Tinturaria e lavanderia', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('14.11','Tapeçaria e reforma de estofamentos em geral', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('14.12','Funilaria e lanternagem', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('14.13','Carpintaria e serralheria', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('14.14','Guincho intramunicipal, guindaste e içamento.', 1);
UPDATE SVZ98608.Category SET image = '/images/category/BR/14.png' WHERE image = null;
UPDATE SVZ98608.Category SET fkCategory = (SELECT DISTINCT pkCategory FROM SVZ98608.Category WHERE fkCategory = null ORDER BY pkCategory ASC) WHERE image = null;

INSERT INTO SVZ98608.Category (code, name, status) VALUES ('15','Serviços relacionados ao setor bancário ou financeiro, inclusive aqueles prestados por instituições financeiras autorizadas a funcionar pela União ou por quem de direito', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('15.01','Administração de fundos quaisquer, de consórcio, de cartão de crédito ou débito e congêneres, de carteira de clientes, de cheques pré-datados e congêneres.     (Vide Lei Complementar nº 175, de 2020', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('15.02','Abertura de contas em geral, inclusive conta-corrente, conta de investimentos e aplicação e caderneta de poupança, no País e no exterior, bem como a manutenção das referidas contas ativas e inativas.', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('15.03','Locação e manutenção de cofres particulares, de terminais eletrônicos, de terminais de atendimento e de bens e equipamentos em geral', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('15.04','Fornecimento ou emissão de atestados em geral, inclusive atestado de idoneidade, atestado de capacidade financeira e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('15.05','Cadastro, elaboração de ficha cadastral, renovação cadastral e congêneres, inclusão ou exclusão no Cadastro de Emitentes de Cheques sem Fundos','CCF ou em quaisquer outros bancos cadastrais', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('15.06','Emissão, reemissão e fornecimento de avisos, comprovantes e documentos em geral; abono de firmas; coleta e entrega de documentos, bens e valores; comunicação com outra agência ou com a administração central; licenciamento eletrônico de veículos; transferência de veículos; agenciamento fiduciário ou depositário; devolução de bens em custódia', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('15.07','Acesso, movimentação, atendimento e consulta a contas em geral, por qualquer meio ou processo, inclusive por telefone, fac-símile, internet e telex, acesso a terminais de atendimento, inclusive vinte e quatro horas; acesso a outro banco e a rede compartilhada; fornecimento de saldo, extrato e demais informações relativas a contas em geral, por qualquer meio ou processo', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('15.08','Emissão, reemissão, alteração, cessão, substituição, cancelamento e registro de contrato de crédito; estudo, análise e avaliação de operações de crédito; emissão, concessão, alteração ou contratação de aval, fiança, anuência e congêneres; serviços relativos a abertura de crédito, para quaisquer fins', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('15.09','Arrendamento mercantil (leasing) de quaisquer bens, inclusive cessão de direitos e obrigações, substituição de garantia, alteração, cancelamento e registro de contrato, e demais serviços relacionados ao arrendamento mercantil (leasing).  (Vide Lei Complementar nº 175, de 2020', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('15.10','Serviços relacionados a cobranças, recebimentos ou pagamentos em geral, de títulos quaisquer, de contas ou carnês, de câmbio, de tributos e por conta de terceiros, inclusive os efetuados por meio eletrônico, automático ou por máquinas de atendimento; fornecimento de posição de cobrança, recebimento ou pagamento; emissão de carnês, fichas de compensação, impressos e documentos em geral', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('15.11','Devolução de títulos, protesto de títulos, sustação de protesto, manutenção de títulos, reapresentação de títulos, e demais serviços a eles relacionados', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('15.12','Custódia em geral, inclusive de títulos e valores mobiliários', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('15.13','Serviços relacionados a operações de câmbio em geral, edição, alteração, prorrogação, cancelamento e baixa de contrato de câmbio; emissão de registro de exportação ou de crédito; cobrança ou depósito no exterior; emissão, fornecimento e cancelamento de cheques de viagem; fornecimento, transferência, cancelamento e demais serviços relativos a carta de crédito de importação, exportação e garantias recebidas; envio e recebimento de mensagens em geral relacionadas a operações de câmbio', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('15.14','Fornecimento, emissão, reemissão, renovação e manutenção de cartão magnético, cartão de crédito, cartão de débito, cartão salário e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('15.15','Compensação de cheques e títulos quaisquer; serviços relacionados a depósito, inclusive depósito identificado, a saque de contas quaisquer, por qualquer meio ou processo, inclusive em terminais eletrônicos e de atendimento', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('15.16','Emissão, reemissão, liquidação, alteração, cancelamento e baixa de ordens de pagamento, ordens de crédito e similares, por qualquer meio ou processo; serviços relacionados à transferência de valores, dados, fundos, pagamentos e similares, inclusive entre contas em geral', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('15.17','Emissão, fornecimento, devolução, sustação, cancelamento e oposição de cheques quaisquer, avulso ou por talão', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('15.18','Serviços relacionados a crédito imobiliário, avaliação e vistoria de imóvel ou obra, análise técnica e jurídica, emissão, reemissão, alteração, transferência e renegociação de contrato, emissão e reemissão do termo de quitação e demais serviços relacionados a crédito imobiliário', 1);
UPDATE SVZ98608.Category SET image = '/images/category/BR/15.png' WHERE image = null;
UPDATE SVZ98608.Category SET fkCategory = (SELECT DISTINCT pkCategory FROM SVZ98608.Category WHERE fkCategory = null ORDER BY pkCategory ASC) WHERE image = null;

INSERT INTO SVZ98608.Category (code, name, status) VALUES ('16','Serviços de transporte de natureza municipal', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('16.01','Serviços de transporte de natureza municipal', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('16.01','Serviços de transporte coletivo municipal rodoviário, metroviário, ferroviário e aquaviário de passageiros.', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('16.02','Outros serviços de transporte de natureza municipal. (Incluído pela Lei Complementar nº 157, de 2016', 1);
UPDATE SVZ98608.Category SET image = '/images/category/BR/16.png' WHERE image = null;
UPDATE SVZ98608.Category SET fkCategory = (SELECT DISTINCT pkCategory FROM SVZ98608.Category WHERE fkCategory = null ORDER BY pkCategory ASC) WHERE image = null;

INSERT INTO SVZ98608.Category (code, name, status) VALUES ('17','Serviços de apoio técnico, administrativo, jurídico, contábil, comercial e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('17.01','Assessoria ou consultoria de qualquer natureza, não contida em outros itens desta lista; análise, exame, pesquisa, coleta, compilação e fornecimento de dados e informações de qualquer natureza, inclusive cadastro e similares', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('17.02','Datilografia, digitação, estenografia, expediente, secretaria em geral, resposta audível, redação, edição, interpretação, revisão, tradução, apoio e infra-estrutura administrativa e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('17.03','Planejamento, coordenação, programação ou organização técnica, financeira ou administrativa', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('17.04','Recrutamento, agenciamento, seleção e colocação de mão-de-obra', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('17.05','Fornecimento de mão-de-obra, mesmo em caráter temporário, inclusive de empregados ou trabalhadores, avulsos ou temporários, contratados pelo prestador de serviço', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('17.06','Propaganda e publicidade, inclusive promoção de vendas, planejamento de campanhas ou sistemas de publicidade, elaboração de desenhos, textos e demais materiais publicitários', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('17.07','  (VETADO', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('17.08','Franquia (franchising)', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('17.09','Perícias, laudos, exames técnicos e análises técnicas', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('17.10','Planejamento, organização e administração de feiras, exposições, congressos e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('17.11','Organização de festas e recepções; bufê (exceto o fornecimento de alimentação e bebidas, que fica sujeito ao ICMS)', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('17.12','Administração em geral, inclusive de bens e negócios de terceiros', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('17.13','Leilão e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('17.14','Advocacia', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('17.15','Arbitragem de qualquer espécie, inclusive jurídica', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('17.16','Auditoria', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('17.17','Análise de Organização e Métodos', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('17.18','Atuária e cálculos técnicos de qualquer natureza', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('17.19','Contabilidade, inclusive serviços técnicos e auxiliares', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('17.20','Consultoria e assessoria econômica ou financeira', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('17.21','Estatística', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('17.22','Cobrança em geral', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('17.23','Assessoria, análise, avaliação, atendimento, consulta, cadastro, seleção, gerenciamento de informações, administração de contas a receber ou a pagar e em geral, relacionados a operações de faturização (factoring)', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('17.24','Apresentação de palestras, conferências, seminários e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('17.25','Inserção de textos, desenhos e outros materiais de propaganda e publicidade, em qualquer meio (exceto em livros, jornais, periódicos e nas modalidades de serviços de radiodifusão sonora e de sons e imagens de recepção livre e gratuita). (Incluído pela Lei Complementar nº 157, de 2016', 1);
UPDATE SVZ98608.Category SET image = '/images/category/BR/17.png' WHERE image = null;
UPDATE SVZ98608.Category SET fkCategory = (SELECT DISTINCT pkCategory FROM SVZ98608.Category WHERE fkCategory = null ORDER BY pkCategory ASC) WHERE image = null;

INSERT INTO SVZ98608.Category (code, name, status) VALUES ('18','Serviços de regulação de sinistros vinculados a contratos de seguros; inspeção e avaliação de riscos para cobertura de contratos de seguros; prevenção e gerência de riscos seguráveis e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('18.01','Serviços de regulação de sinistros vinculados a contratos de seguros; inspeção e avaliação de riscos para cobertura de contratos de seguros; prevenção e gerência de riscos seguráveis e congêneres', 1);
UPDATE SVZ98608.Category SET image = '/images/category/BR/18.png' WHERE image = null;
UPDATE SVZ98608.Category SET fkCategory = (SELECT DISTINCT pkCategory FROM SVZ98608.Category WHERE fkCategory = null ORDER BY pkCategory ASC) WHERE image = null;

INSERT INTO SVZ98608.Category (code, name, status) VALUES ('19','Serviços de distribuição e venda de bilhetes e demais produtos de loteria, bingos, cartões, pules ou cupons de apostas, sorteios, prêmios, inclusive os decorrentes de títulos de capitalização e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('19.01','Serviços de distribuição e venda de bilhetes e demais produtos de loteria, bingos, cartões, pules ou cupons de apostas, sorteios, prêmios, inclusive os decorrentes de títulos de capitalização e congêneres', 1);
UPDATE SVZ98608.Category SET image = '/images/category/BR/19.png' WHERE image = null;
UPDATE SVZ98608.Category SET fkCategory = (SELECT DISTINCT pkCategory FROM SVZ98608.Category WHERE fkCategory = null ORDER BY pkCategory ASC) WHERE image = null;

INSERT INTO SVZ98608.Category (code, name, status) VALUES ('20','Serviços portuários, aeroportuários, ferroportuários, de terminais rodoviários, ferroviários e metroviários', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('20.01','Serviços portuários, ferroportuários, utilização de porto, movimentação de passageiros, reboque de embarcações, rebocador escoteiro, atracação, desatracação, serviços de praticagem, capatazia, armazenagem de qualquer natureza, serviços acessórios, movimentação de mercadorias, serviços de apoio marítimo, de movimentação ao largo, serviços de armadores, estiva, conferência, logística e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('20.02','Serviços aeroportuários, utilização de aeroporto, movimentação de passageiros, armazenagem de qualquer natureza, capatazia, movimentação de aeronaves, serviços de apoio aeroportuários, serviços acessórios, movimentação de mercadorias, logística e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('20.03','Serviços de terminais rodoviários, ferroviários, metroviários, movimentação de passageiros, mercadorias, inclusive     suas operações, logística e congêneres', 1);
UPDATE SVZ98608.Category SET image = '/images/category/BR/20.png' WHERE image = null;
UPDATE SVZ98608.Category SET fkCategory = (SELECT DISTINCT pkCategory FROM SVZ98608.Category WHERE fkCategory = null ORDER BY pkCategory ASC) WHERE image = null;

INSERT INTO SVZ98608.Category (code, name, status) VALUES ('21','Serviços de registros públicos, cartorários e notariais', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('21.01','Serviços de registros públicos, cartorários e notariais', 1);
UPDATE SVZ98608.Category SET image = '/images/category/BR/21.png' WHERE image = null;
UPDATE SVZ98608.Category SET fkCategory = (SELECT DISTINCT pkCategory FROM SVZ98608.Category WHERE fkCategory = null ORDER BY pkCategory ASC) WHERE image = null;

INSERT INTO SVZ98608.Category (code, name, status) VALUES ('22','Serviços de exploração de rodovia', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('22.01','Serviços de exploração de rodovia mediante cobrança de preço ou pedágio dos usuários, envolvendo execução de serviços de conservação, manutenção, melhoramentos para adequação de capacidade e segurança de trânsito, operação, monitoração, assistência aos usuários e outros serviços definidos em contratos, atos de concessão ou de permissão ou em      normas oficiais', 1);
UPDATE SVZ98608.Category SET image = '/images/category/BR/22.png' WHERE image = null;
UPDATE SVZ98608.Category SET fkCategory = (SELECT DISTINCT pkCategory FROM SVZ98608.Category WHERE fkCategory = null ORDER BY pkCategory ASC) WHERE image = null;

INSERT INTO SVZ98608.Category (code, name, status) VALUES ('23','Serviços de programação e comunicação visual, desenho industrial e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('23.01','Serviços de programação e comunicação visual, desenho industrial e congêneres', 1);
UPDATE SVZ98608.Category SET image = '/images/category/BR/23.png' WHERE image = null;
UPDATE SVZ98608.Category SET fkCategory = (SELECT DISTINCT pkCategory FROM SVZ98608.Category WHERE fkCategory = null ORDER BY pkCategory ASC) WHERE image = null;

INSERT INTO SVZ98608.Category (code, name, status) VALUES ('24','Serviços de chaveiros, confecção de carimbos, placas, sinalização visual, banners, adesivos e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('24.01','Serviços de chaveiros, confecção de carimbos, placas, sinalização visual, banners, adesivos e congêneres', 1);
UPDATE SVZ98608.Category SET image = '/images/category/BR/24.png' WHERE image = null;
UPDATE SVZ98608.Category SET fkCategory = (SELECT DISTINCT pkCategory FROM SVZ98608.Category WHERE fkCategory = null ORDER BY pkCategory ASC) WHERE image = null;

INSERT INTO SVZ98608.Category (code, name, status) VALUES ('25','Serviços funerários', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('25.01','Funerais, inclusive fornecimento de caixão, urna ou esquifes; aluguel de capela; transporte do corpo cadavérico; fornecimento de flores, coroas e outros paramentos; desembaraço de certidão de óbito; fornecimento de véu, essa e outros adornos; embalsamento, embelezamento, conservação ou restauração de cadáveres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('25.02','Cremação de corpos e partes de corpos cadavéricos', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('25.02','Translado intramunicipal e cremação de corpos e partes de corpos cadavéricos.', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('25.03','Planos ou convênio funerários', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('25.04','Manutenção e conservação de jazigos e cemitérios', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('25.05','Cessão de uso de espaços em cemitérios para sepultamento. (Incluído pela Lei Complementar nº 157, de 2016', 1);
UPDATE SVZ98608.Category SET image = '/images/category/BR/25.png' WHERE image = null;
UPDATE SVZ98608.Category SET fkCategory = (SELECT DISTINCT pkCategory FROM SVZ98608.Category WHERE fkCategory = null ORDER BY pkCategory ASC) WHERE image = null;

INSERT INTO SVZ98608.Category (code, name, status) VALUES ('26','Serviços de coleta, remessa ou entrega de correspondências, documentos, objetos, bens ou valores, inclusive pelos correios e suas agências franqueadas; courrier e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('26.01','Serviços de coleta, remessa ou entrega de correspondências, documentos, objetos, bens ou valores, inclusive pelos correios e suas agências franqueadas; courrier e congêneres', 1);
UPDATE SVZ98608.Category SET image = '/images/category/BR/26.png' WHERE image = null;
UPDATE SVZ98608.Category SET fkCategory = (SELECT DISTINCT pkCategory FROM SVZ98608.Category WHERE fkCategory = null ORDER BY pkCategory ASC) WHERE image = null;

INSERT INTO SVZ98608.Category (code, name, status) VALUES ('27','Serviços de assistência social', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('27.01','Serviços de assistência social', 1);
UPDATE SVZ98608.Category SET image = '/images/category/BR/27.png' WHERE image = null;
UPDATE SVZ98608.Category SET fkCategory = (SELECT DISTINCT pkCategory FROM SVZ98608.Category WHERE fkCategory = null ORDER BY pkCategory ASC) WHERE image = null;

INSERT INTO SVZ98608.Category (code, name, status) VALUES ('28','Serviços de avaliação de bens e serviços de qualquer natureza', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('28.01','Serviços de avaliação de bens e serviços de qualquer natureza', 1);
UPDATE SVZ98608.Category SET image = '/images/category/BR/28.png' WHERE image = null;
UPDATE SVZ98608.Category SET fkCategory = (SELECT DISTINCT pkCategory FROM SVZ98608.Category WHERE fkCategory = null ORDER BY pkCategory ASC) WHERE image = null;

INSERT INTO SVZ98608.Category (code, name, status) VALUES ('29','Serviços de biblioteconomia', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('29.01','Serviços de biblioteconomia', 1);
UPDATE SVZ98608.Category SET image = '/images/category/BR/29.png' WHERE image = null;
UPDATE SVZ98608.Category SET fkCategory = (SELECT DISTINCT pkCategory FROM SVZ98608.Category WHERE fkCategory = null ORDER BY pkCategory ASC) WHERE image = null;

INSERT INTO SVZ98608.Category (code, name, status) VALUES ('30','Serviços de biologia, biotecnologia e química', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('30.01','Serviços de biologia, biotecnologia e química', 1);
UPDATE SVZ98608.Category SET image = '/images/category/BR/30.png' WHERE image = null;
UPDATE SVZ98608.Category SET fkCategory = (SELECT DISTINCT pkCategory FROM SVZ98608.Category WHERE fkCategory = null ORDER BY pkCategory ASC) WHERE image = null;

INSERT INTO SVZ98608.Category (code, name, status) VALUES ('31','Serviços técnicos em edificações, eletrônica, eletrotécnica, mecânica, telecomunicações e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('31.01','Serviços técnicos em edificações, eletrônica, eletrotécnica, mecânica, telecomunicações e congêneres', 1);
UPDATE SVZ98608.Category SET image = '/images/category/BR/31.png' WHERE image = null;
UPDATE SVZ98608.Category SET fkCategory = (SELECT DISTINCT pkCategory FROM SVZ98608.Category WHERE fkCategory = null ORDER BY pkCategory ASC) WHERE image = null;

INSERT INTO SVZ98608.Category (code, name, status) VALUES ('32','Serviços de desenhos técnicos', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('32.01','Serviços de desenhos técnicos', 1);
UPDATE SVZ98608.Category SET image = '/images/category/BR/32.png' WHERE image = null;
UPDATE SVZ98608.Category SET fkCategory = (SELECT DISTINCT pkCategory FROM SVZ98608.Category WHERE fkCategory = null ORDER BY pkCategory ASC) WHERE image = null;

INSERT INTO SVZ98608.Category (code, name, status) VALUES ('33','Serviços de desembaraço aduaneiro, comissários, despachantes e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('33.01','Serviços de desembaraço aduaneiro, comissários, despachantes e congêneres', 1);
UPDATE SVZ98608.Category SET image = '/images/category/BR/33.png' WHERE image = null;
UPDATE SVZ98608.Category SET fkCategory = (SELECT DISTINCT pkCategory FROM SVZ98608.Category WHERE fkCategory = null ORDER BY pkCategory ASC) WHERE image = null;

INSERT INTO SVZ98608.Category (code, name, status) VALUES ('34','Serviços de investigações particulares, detetives e congêneres', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('34.01','Serviços de investigações particulares, detetives e congêneres', 1);
UPDATE SVZ98608.Category SET image = '/images/category/BR/34.png' WHERE image = null;
UPDATE SVZ98608.Category SET fkCategory = (SELECT DISTINCT pkCategory FROM SVZ98608.Category WHERE fkCategory = null ORDER BY pkCategory ASC) WHERE image = null;

INSERT INTO SVZ98608.Category (code, name, status) VALUES ('35','Serviços de reportagem, assessoria de imprensa, jornalismo e relações públicas', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('35.01','Serviços de reportagem, assessoria de imprensa, jornalismo e relações públicas', 1);
UPDATE SVZ98608.Category SET image = '/images/category/BR/35.png' WHERE image = null;
UPDATE SVZ98608.Category SET fkCategory = (SELECT DISTINCT pkCategory FROM SVZ98608.Category WHERE fkCategory = null ORDER BY pkCategory ASC) WHERE image = null;

INSERT INTO SVZ98608.Category (code, name, status) VALUES ('36','Serviços de meteorologia', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('36.01','Serviços de meteorologia', 1);
UPDATE SVZ98608.Category SET image = '/images/category/BR/36.png' WHERE image = null;
UPDATE SVZ98608.Category SET fkCategory = (SELECT DISTINCT pkCategory FROM SVZ98608.Category WHERE fkCategory = null ORDER BY pkCategory ASC) WHERE image = null;

INSERT INTO SVZ98608.Category (code, name, status) VALUES ('37','Serviços de artistas, atletas, modelos e manequins', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('37.01','Serviços de artistas, atletas, modelos e manequins', 1);
UPDATE SVZ98608.Category SET image = '/images/category/BR/37.png' WHERE image = null;
UPDATE SVZ98608.Category SET fkCategory = (SELECT DISTINCT pkCategory FROM SVZ98608.Category WHERE fkCategory = null ORDER BY pkCategory ASC) WHERE image = null;

INSERT INTO SVZ98608.Category (code, name, status) VALUES ('38','Serviços de museologia', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('38.01','Serviços de museologia', 1);
UPDATE SVZ98608.Category SET image = '/images/category/BR/38.png' WHERE image = null;
UPDATE SVZ98608.Category SET fkCategory = (SELECT DISTINCT pkCategory FROM SVZ98608.Category WHERE fkCategory = null ORDER BY pkCategory ASC) WHERE image = null;

INSERT INTO SVZ98608.Category (code, name, status) VALUES ('39','Serviços de ourivesaria e lapidação', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('39.01','Serviços de ourivesaria e lapidação (quando o material for fornecido pelo tomador do serviço)', 1);
UPDATE SVZ98608.Category SET image = '/images/category/BR/39.png' WHERE image = null;
UPDATE SVZ98608.Category SET fkCategory = (SELECT DISTINCT pkCategory FROM SVZ98608.Category WHERE fkCategory = null ORDER BY pkCategory ASC) WHERE image = null;

INSERT INTO SVZ98608.Category (code, name, status) VALUES ('40','Serviços relativos a obras de arte sob encomenda', 1);
INSERT INTO SVZ98608.Category (code, name, status) VALUES ('40.01','Obras de arte sob encomenda.', 1);
UPDATE SVZ98608.Category SET image = '/images/category/BR/40.png' WHERE image = null;
UPDATE SVZ98608.Category SET fkCategory = (SELECT DISTINCT pkCategory FROM SVZ98608.Category WHERE fkCategory = null ORDER BY pkCategory ASC) WHERE image = null;

UPDATE SVZ98608.Category fkCountry SET (SELECT pkCountry FROM Country WHERE abbreviation = 'BR' AND status = 1) WHERE fkCountry = null;

--------------------CATEGORY--------------------