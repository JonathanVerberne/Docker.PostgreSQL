CREATE TABLE public.teams (
    team_id int PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    team_name varchar(50)
);

INSERT INTO public.teams 
    (team_name)
VALUES
('Aprilia'),('Ducati'),('Honda'),('KTM'),('Suzuki'),('Yamaha');
	
CREATE TABLE public.riders (
    rider_id int GENERATED ALWAYS AS IDENTITY,
    team_id int,
    rider varchar(100),
    points int,
    PRIMARY KEY(rider_id),
    CONSTRAINT fk_team
      FOREIGN key (team_id) 
	  REFERENCES teams(team_id)
);

INSERT INTO public.riders 
    (team_id, rider, points)
VALUES
    ((select team_id from teams t where team_name = 'Aprilia'), 'Maverick Viñales', 0),
    ((select team_id from teams t where team_name = 'Aprilia'), 'Aleix Espargaro', 0),
    ((select team_id from teams t where team_name = 'Ducati'), 'Jack Miller', 0),
    ((select team_id from teams t where team_name = 'Ducati'), 'Francesco Bagnaia', 0),
    ((select team_id from teams t where team_name = 'Honda'), 'Marc Marquez', 0),
    ((select team_id from teams t where team_name = 'Honda'), 'Pol Espargaro', 0),
    ((select team_id from teams t where team_name = 'KTM'), 'Brad Binder', 0),
    ((select team_id from teams t where team_name = 'KTM'), 'Miguel Oliveira', 0),
    ((select team_id from teams t where team_name = 'Suzuki'), 'Joan Mir', 0),
    ((select team_id from teams t where team_name = 'Suzuki'), 'Alex Rins', 0),
    ((select team_id from teams t where team_name = 'Yamaha'), 'Fabio Quartararo', 0),
    ((select team_id from teams t where team_name = 'Yamaha'), 'Franco Morbidelli', 0);

