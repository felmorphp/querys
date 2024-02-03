# for events.idEvent = 552 display the list of races (events_races)
# and for each race the name
# of the runner with events_runners.programNumber = 11
# in a form like:
#events_races.raceNumber, events_runners.name
#*IMPORTANT: if race doesn't contain runners
# with programNumber = 11 we still want to see
# events_races.raceNumber in the results list (name will be empty)

select events.idEvent, events_races.raceNumber, events_runners.name,events_runners.programNumber
from events
   join  events_races on events_races.idEvent = events.idEvent
 left join events_runners on events_runners.idRace = events_races.idRace and programNumber=11
where events.idEvent = 552;






