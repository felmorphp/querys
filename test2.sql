#2) for events_races.idRace = 4522 display race results for events_races_final_odds.betType =
# PLC in a form like:
#events_runners.programNumber, events_runners.name,
#events_races_final_positions.finalPosition, events_races_final_odds.odds
#*IMPORTANT: in table events_races_final_odds column "combination"
# contains  programNumber of the horse

select events_runners.programNumber,events_runners.name, events_races_final_positions.finalPosition,events_races_final_odds.odds,events_races_final_odds.combination
       from events_races
         join events_runners on events_runners.idRace = events_races.idRace
         join events_races_final_positions on events_races_final_positions.idRunner = events_runners.idRunner
         join rbtest.events_races_final_odds on events_races_final_odds.idRace = events_races.idRace
         where events_races.idRace = 4522


