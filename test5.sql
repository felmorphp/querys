#5) for events_races.idRace = 4491 and 4522 display information
# about the runner with the  HIGHEST events_runners.programNumber
# for each idRace in a form like:
#events.runners.programNumber, events_runners.name

select events_runners.idRace,max(programNumber),name
from events_runners
where idRace in (4491,4522) group by idRace;






