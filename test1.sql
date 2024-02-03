#1) for events_runners.idRunner = 51256 find events.idTrack

select events_runners.idRunner,events_races.idRace,idTrack
from events_runners
         join events_races on events_runners.idRace = events_races.idRace
         join events on events.idEvent = events_races.idEvent
where idRunner=51256