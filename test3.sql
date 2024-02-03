#for events.idEvent = 552
#display information about every race which belong to this event
#if  number of runners in the race is greater than 8 in a form like:
#events_races.raceNumber,
#"number of runners for this races in events_runners table"


select events.idEvent ,events_races.raceNumber, events_races.idRace,count(  events_runners.idRace) as countRunners
from events
join events_races on events_races.idEvent = events.idEvent
left join events_runners on events_runners.idRace = events_races.idRace
where events.idEvent  = 552
group by events_races.idRace
having countRunners>8





