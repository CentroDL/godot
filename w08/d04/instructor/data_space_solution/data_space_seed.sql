-- remove any records and start the id sequence back to 1
TRUNCATE TABLE missions_space_travelers    RESTART IDENTITY CASCADE;
TRUNCATE TABLE nations_space_programs      RESTART IDENTITY CASCADE;
TRUNCATE TABLE missions                    RESTART IDENTITY CASCADE;
TRUNCATE TABLE space_programs              RESTART IDENTITY CASCADE;
TRUNCATE TABLE space_travelers             RESTART IDENTITY CASCADE;
TRUNCATE TABLE space_crafts                RESTART IDENTITY CASCADE;
TRUNCATE TABLE nations                     RESTART IDENTITY CASCADE;

INSERT INTO nations
  (name, country_code, head_of_state)
VALUES
  ('The United States of America',    'US', 'Barack Hussein Obama'),
  ('The Union of Soviet Socialist Republics', 'SU', 'n/a'),
  ('The Russian Federation',          'RU', 'Vladimir Putin'),
  ('The French Republic',             'FR', 'François Hollande'),
  ('Japan',                           'JP', 'Emperor Akihito'),
  ('The Federal Republic of Germany', 'DE', 'Angela Merkel'),
  ('The Italian Republic',            'IT', 'Sergio Mattarella'),
  ('The People''s Republic of China', 'CN', 'Xi Jinping'),
  ('The United Kingdom',              'GB', 'HRH Queen Elizabeth II'),
  ('The Swiss Confederation',         'CH', 'Corina Casanova'),
  ('Canada',                          'CA', 'HRH Queen Elizabeth II'),
  ('Israel',                          'IL', 'Reuven Rivlin');

INSERT INTO space_programs
  (name, budget, director, founded_on)
VALUES
  (
    'NASA - National Aeronautics and Space Administration',
    18724000000,
    'Charles Bolden',
    '1958-10-01'
  ),
  (
    'USSR Space Program - Soviet Space Program (Советская космическая программа)',
    0,
    'n/a',
    '1955-01-01'
  ),
  (
    'ROSCOSMOS - Russian Federal Space Agency (Федеральное космическое агентство)',
    5600000000,
    'Oleg Ostapenko',
    '1992-02-25'
  ),
  (
    'ESA - European Space Agency (Agence spatiale européenne)',
    5510000000,
    'Jean-Jacques Dordain',
    '1975-05-30'
  ),
  (
    'CNES - National Centre for Space Studies (Centre national d''études spatiales)',
    2500000000,
    'Bernard Bigot',
    '1961-01-01'
  ),
  (
    'JAXA - Japan Aerospace Exploration Agency (独立行政法人宇宙航空研究開発機構)',
    2460000000,
    'Naoki Okumura',
    '2003-01-01'
  ),
  (
    'DLR - German Aerospace Center (Deutsches Zentrum für Luft- und Raumfahrt e.V.)',
    2000000000,
    'Johann-Dietrich Wörner',
    '1969-01-01'
  ),
  (
    'ASI - Italian Space Agency (Agenzia Spaziale Italiana)',
    1800000000,
    'Aldo Sandulli',
    '1988-01-01'
  ),
  (
    'CNSA - China National Space Administration (国家航天局)',
    1300000000,
    'Chen Qiufa',
    '1993-04-22'
  ),
  (
    'Interkosmos - Soviet International Space Program (Интеркосмос)',
    0,
    'n/a',
    '1967-04-01'
  );

INSERT INTO nations_space_programs
  (nation_id, space_program_id)
VALUES
  (1, 1),
  (2, 2),
  (2, 10),
  (3, 3),
  (4, 4),
  (4, 10),
  (4, 5),
  (5, 6),
  (6, 4),
  (6, 7),
  (7, 4),
  (7, 8),
  (8, 9),
  (9, 4),
  (10, 4);

INSERT INTO space_crafts
  (name, craft_type, capacity, space_program_id)
VALUES
  ('Shenzhou 5 Craft', 'Chang Zheng 2F Rocket',   1,  8),
  ('Shenzhou 9 Craft', 'Chang Zheng 2F/G Rocket', 3,  8),
  ('Discovery OV-103', 'Space Shuttle',           10, 1);

INSERT INTO space_travelers
  (name, role, born_on, gender, nation_id)
VALUES
  ('Yang Liwei',               'Pilot',                   '1965-06-21', 'M', 8),
  ('Jing Haipeng',             'Commander',               '1966-10-24', 'M', 8),
  ('Liu Wang',                 'Spaceflight Participant', '1969-03-01', 'M', 8),
  ('Liu Yang',                 'Spaceflight Participant', '1978-10-06', 'F', 8),
  ('Brian Duffy',              'Commander',               '1953-06-20', 'M', 1),
  ('Pamela A. Melroy',         'Pilot',                   '1961-09-17', 'F', 1),
  ('Koichi Wakata',            'Mission Specialist',      '1963-08-01', 'M', 5),
  ('William S. McArthur',      'Mission Specialist',      '1951-07-26', 'M', 1),
  ('Peter J.K. Wisoff',        'Mission Specialist',      '1958-08-16', 'M', 1),
  ('Michael E. López-Alegría', 'Mission Specialist',      '1958-05-30', 'M', 1),
  ('Leroy Chiao',              'Mission Specialist',      '1960-08-28', 'M', 1),
  ('Eileen Collins',           'Commander',               '1956-11-19', 'F', 1),
  ('James M. Kelly',           'Pilot',                   '1964-05-14', 'M', 1),
  ('Soichi Noguchi',           'Mission Specialist',      '1965-04-15', 'M', 5),
  ('Stephen K. Robinson',      'Mission Specialist',      '1955-10-26', 'M', 1),
  ('Andrew S. W. Thomas',      'Mission Specialist',      '1951-12-18', 'M', 1),
  ('Wendy B. Lawrence',        'Mission Specialist',      '1959-07-02', 'F', 1),
  ('Charles J. Camarda',       'Mission Specialist',      '1952-05-08', 'M', 1);

INSERT INTO missions
  (name, start_date, end_date, space_program_id, space_craft_id, piloted_by_id)
VALUES
  ('Shenzhou 5', '2003-10-15', '2003-10-15', 9, 1, 1),
  ('Shenzhou 9', '2012-06-16', '2012-06-29', 9, 2, 2),
  ('STS-92',     '2006-10-12', '2006-12-22', 1, 3, 6),
  ('STS-114',    '2005-07-26', '2005-08-09', 1, 3, 13);

INSERT INTO missions_space_travelers
  (mission_id, space_traveler_id)
VALUES
  (1, 3),
  (1, 4),
  (2, 5),
  (2, 7),
  (2, 8),
  (2, 9),
  (2, 10),
  (2, 11),
  (3, 12),
  (3, 14),
  (3, 15),
  (3, 16),
  (3, 17),
  (3, 18);
