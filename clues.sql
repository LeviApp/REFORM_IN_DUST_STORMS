CREATE TABLE IF NOT EXISTS public.murder_in_color_clue (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    place_id integer NOT NULL
);

INSERT INTO public.murder_in_color_clue VALUES
    (1,'Report from Sheriff Caleb Beckett','"A witness came to my office and reported that our suspect could have been injured."',14),
    (2,'Weapon Transcript','"I did not get a close look at the weapon, but it looked metal."',16),
    (3,'Footprints','You notice some interesting footprints. It looks like the criminal has a bad leg.',18),
    (4,'Weapon Clue','"I noticed that he was carrying something blunt."',21),
    (5,'Age Clue','"He was no spring chicken."',20),
    (6,'Overheard Talk','You overheard someone describe the suspect like this. 

"He could have been alive when that tree was planted."',24);
