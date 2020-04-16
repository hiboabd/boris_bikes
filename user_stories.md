User Stories task

* Write down all the nouns in the User Stories

Nouns: person, bike, docking station

* Write down all the verbs in the User Stories

Verbs: use, release, see, working

* Draw a table like the one above. Organise the nouns and verbs into Objects and Messages within the table

Objects	Messages
Person	request_bike
Bike	is_working
Docking station	release_bike

* Draw a diagram that shows how your Objects will use Messages to communicate with one another

1. The person goes to the docking station and requests a bike from the docking station.
2. The docking station checks if a bike is available and releases the bike.
3. The person uses the bike to check whether the bike is working.
4. The docking station will check the status of the bike (i.e. whether it is working).
5. The docking station will release the bike if it is working.

Bike <-- working? --> true/false
DockingStation <-- release_bike --> a Bike
