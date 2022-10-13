ALTER TABLE ONLY public.murder_in_color_case
    ADD CONSTRAINT IF NOT EXISTS murder_in_color_case_player_id_c4d760bf_fk_murder_in FOREIGN KEY (player_id) REFERENCES public.murder_in_color_player(id) DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE ONLY public.murder_in_color_clue
    ADD CONSTRAINT IF NOT EXISTS murder_in_color_clue_place_id_d78930f6_fk_murder_in FOREIGN KEY (place_id) REFERENCES public.murder_in_color_place(id) DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE ONLY public.murder_in_color_place
    ADD CONSTRAINT IF NOT EXISTS murder_in_color_plac_city_id_8fd04fdd_fk_murder_in FOREIGN KEY (city_id) REFERENCES public.murder_in_color_city(id) DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE ONLY public.murder_in_color_responses
    ADD CONSTRAINT IF NOT EXISTS murder_in_color_resp_witness_id_35a4a325_fk_murder_in FOREIGN KEY (witness_id) REFERENCES public.murder_in_color_witness(id) DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE ONLY public.murder_in_color_witness
    ADD CONSTRAINT IF NOT EXISTS murder_in_color_witn_place_id_65d2311b_fk_murder_in FOREIGN KEY (place_id) REFERENCES public.murder_in_color_place(id) DEFERRABLE INITIALLY DEFERRED;

