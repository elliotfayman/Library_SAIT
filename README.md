# Welcome to my Library Project!! 

This project was created in fullfilment of the intern project given to SAIT student web developers. 

---

## Running the Project

Run the following commands in your terminal:

```
git clone https://github.com/elliotfayman/Library_SAIT/edit/master/README.rdoc
redis-server
sidekiq
rails s
```

## Home Page
This page contains all the available and unavailable books. Books that can be checked out will be highlighted green while those that cannot are highlighted red. Each book that is unavailable will also list a time by which the book will become available. If the user is signed in, the user can click on an availible book to review more details relating to the book with the exteded option to check out. If the user is not signed in, then the user will be prompted to sign in before having the ability to check out the book. 

## Checkout Book
This page displays any books that the signed in user has decided to check out. When the user clicks the checkout button, a sidekiq job is scheduled on the day the user reported they would check the book back in. If the user does not prematurly check the book back in, the book will be checked back in automaticly allowing for other users to check the book out as soon as possible. 

## Sign in/Sign up

## Admin Page
