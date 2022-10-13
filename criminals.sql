CREATE TABLE IF NOT EXISTS public.murder_in_color_criminal (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    gender character varying(50) NOT NULL,
    race character varying(50) NOT NULL,
    height character varying(50) NOT NULL,
    age character varying(50) NOT NULL,
    weight character varying(50) NOT NULL,
    hair_color character varying(50) NOT NULL,
    face_feature character varying(50) NOT NULL,
    unique_feature character varying(50) NOT NULL,
    crime_place character varying(50) NOT NULL,
    weapon character varying(50) NOT NULL
);

INSERT INTO public.murder_in_color_criminal VALUES
    (1,'Anastasia Hayes','Female','Mexican','Average','Young','Thin','Blond','Big Nose','Scar','Lake','Gun'),
    (2,'Charles Obasi','Male','African','Tall','Middle-Aged','Thin','Blond','Big Mouth','Scar','Store','Axe'),
    (3,'Olivia Bell','Female','European','Short','Young','Average','Brown','Big Nose','Missing Teeth','Wagons','Rake'),
    (4,'Jacob Rodgers','Male','European','Short','Young','Thin','Red','Big Ears','Mole','Courthouse','Shovel'),
    (5,'Sophia Jones','Female','African','Tall','Middle-Aged','Heavy','Gray','Big Nose','Limp','Corral','Knife'),
    (6,'Dakota Turner','Male','Indian','Tall','Old','Thin','Black','Big Eyebrows','Limp','Bridge','Hammer'),
    (7,'Karla Kun','Female','Chinese','Short','Old','Average','Gray','Big Ears','Glasses','Forest','Rock'),
    (8,'Martin Garcia','Male','Mexican','Tall','Old','Heavy','Gray','Big Eyebrows','Missing Teeth','Bank','Bow'),
    (9,'Alisha Trayi','Female','Indian','Average','Young','Thin','Red','Big Ears','Mole','Meadow','Rope'),
    (10,'Shan Li','Male','Chinese','Short','Old','Average','Brown','Big Nose','Limp','Bonfire','Bottle');
