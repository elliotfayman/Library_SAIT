# Welcome to my Library Project!! 

This project was created in fullfilment of the intern project given to SAIT student web developers. 

---

## Running the Project

Run the following commands in your terminal:

```
git clone https://github.com/elliotfayman/Library_SAIT/edit/master/README.rdoc
db rake:migrate
redis-server
sidekiq
rails s
```

## Home Page
This page contains all the available and unavailable books. Books that can be checked out will be highlighted green while those that cannot are highlighted red. Each book that is unavailable will also list a time by which the book will become available. If the user is signed in, the user can click on an available book to review more details relating to the book with the extended option to check out. If the user is not signed in, then the user will be prompted to sign in before having the ability to check out the book.

## Checkout Book
This page displays any books that the signed in user has decided to check out. When the user clicks the checkout button, a sidekiq job is scheduled on the day the user reported they would check the book back in. If the user does not prematurely check the book back in, the book will be checked back in automatically allowing for other users to check the book out as soon as possible. 

## Sign in/Sign up
The sign in page utilizes the devise gem in order to create password secure users. The devise view template was modified in order to include additional fields including a state & city select box. This select field can automatically filter the cities based on what was selected in the states field. This was implemented using some javascript in combination with the city-state gem. Once a user has created an account, they will be prompted to confirm their email. This confirmation is sent to the users email but is immediately displayed using the letter_opener gem. After confirming their account, the user can sign in freely. 

## Admin Page
The admin page can only be accessed if the user has the admin permission. If the user possesses this permission, the user can access the admin page which displays a full list of users and the books that they have checked out. The permissions per user is managed using the cancancan gem. 
