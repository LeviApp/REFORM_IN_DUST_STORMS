CREATE TABLE public.murder_in_color_city (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    theme character varying(50) NOT NULL,
    description text NOT NULL,
    travel_time integer NOT NULL
);

INSERT INTO public.murder_in_color_city VALUES
    (1,'Denver','Busy City','In front of you is a busy little town. People in the streets walk to and fro going about their business. You hear wagons rolling and children playing. You smell the homemade bread of restaurants nearby.',1),
    (2,'Louisville','Train Station','Ahead, you see a train pulled into the station, passengers around you hurry to get ready for the long journey in front of them. You see a train engineer with a hammer banging away, working on the train. You hear the loud toots of the horn and are suddenly engulfed in a thick cloud of smoke.',1),
    (3,'Idaho Springs','Indian Community','A friendly Indian community is in view. Indian mothers pick vegetables from the garden while young Indian warriors practice hunting techniques. You smell the herbs that are being used for an ancient ritual in a tent nearby.',1),
    (4,'Cripple Creek','Gold Rush','You haven''t heard? There is gold in these waters! You see the creek packed with fortune hunters. You hear the roaring of water in the creek next to you. You feel the sand give way under your feet as you sink further into the creek''s bank.',1),
    (5,'Fort Morgan','Military Fort','As you arrive, a massive military fort is in sight. Soldiers take part in military drills. You hear the sound of rifle bullets hitting their target. Your senses alert you to the smell of freshly baked beans. You notice a soldier cooking on a nearby fire.',1);
