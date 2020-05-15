                                        #Models
#Introduction
#Models are the M in the MVC. The job of a model is to represent data and logic. Whenever we have data that we need to store temporarily or persistently we will be using one of our model classes. All of the logic associated with that data, whether it be saving that information in the database for later use or sending a confirmation email after a User has registered to our site will also be handled by our model classes.
#------------------------------------------------------------------------------------------------------
                                #Object Relational Mapping ORM
# An ORM is a technique that connects the different objects that we use in our Application to tables in the database. For example, if we have a users table with the first_name and last_name columns in our database, we will need to create a User model class with the first_name and last_name attributes. Then, the Rails ORM will automatically link the table and columns to the name of the model and its attributes. 

#Now that those two are linked, we can create, read, update and delete records from our users table by calling methods from the User model class. All without having to write a single line of SQL!
#------------------------------------------------------------------------------------------------------
                                        #ActiveRecord
#The ORM that we will be using with Rails is called ActiveRecord. This ORM is one of the main features that made Rails so popular by developers. ActiveRecord works with a wide range of different databases but for the purpose of this course we will be focusing mostly on sqlite and postgresql.
#------------------------------------------------------------------------------------------------------