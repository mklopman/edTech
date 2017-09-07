# README

Approach: 

Due to elements out of their control, teachers have long struggled to make their classes fun. All they can do is follow the curriculum to the best of their abilities. With that in mind, we set out to develop an app for teachers trying to help other teachers implement new technologies into their classes to make get students more engaged and actually have more fun learning. 

To do this, we created our Teachers for Teachers app. We wanted to allow a teacher to post a message on our "Help Wanted" board, seeking insight on how to implement a new technology in the classroom. Then, other teachers who have the necessary experience can offer help to that teacher. 

At the start, given that we had three people working on the app, one was the tasked with the front-end functionality/styling while the other two did paired programming to take care of the back end. That worked for a the first day or so, and then we all worked together to wrap up the back end and work required to get the API up and running. 

We separarted who was in charge of what aspect of the app, but overall, each of us worked together as a unit on most of the features. We didn't want to branch too far off from each other, especially with such a small group. It helped us improve on all of our skills rather than just what we were comfortable with working on. 


User stories:

	"As a high school math teacher, I had been trying to figure out how to engage them so I started looking at Google Services and implementing them in the classroom. Then i found this app Teachers4Teachers, which connected me with another teacher who's been doing that for the last few years, and she gave me tips on how to do that."

	"I've been looking to utlize the fact that all my students have smartphones, because of course they do. So, I reached out through this app, Teachers4Teachers, for someone who could help me implement apps on their phones to help them with their homework."


Technologies: 
- Ruby
- Materialize
- dotenv
- httparty
- bcrypt
- byebug
- Google Places API

Unsolved problems: 

The biggest unsolved problem we have right now is including a way to signal that a teacher looking for help has actually been helped. When a teacher offers help to another teacher's post seeking help, we wanted a button to flash a color or a message indicating that the two have successfully connected so that other users know that someone looking for help has been taken care of. We succesfully matched a teacher looking for help with another teacher offering help, and if we had one more day, we would've implemented this.

Another issue involves our ratings system. Right now, we can successfully rate users and a user can have many ratings, but we also wanted to display the user's average rating at the top of the profile page. If we had another day, we would have refined the system to make it more sensible. 

The last unsolved problem was the Google Places API being fully functional. We ran into problems going over the query limit and getting everything to render properly. It took us a while to figure out HTTParty and implement it, and by the time we had everything functionining, we exceeded the query limit. 




