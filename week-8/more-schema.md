#More Schema

##Release 2: One to One

<img src="/imgs/one_to_one_schema.jpeg">

This schema represents a database with two tables that have a one to one relationship.  This relationship indicates that for every value in one table, there is one - and only one - corresponding value in the other table.  The example depicts one table that holds basic information about products, such as might be seen in product search results - just the name, price, manufacturer, materials, delivery, and the search terms it falls under.  The second table stores more detailed information about the same products, such as a might be seen if you clicked on a product for more information - maybe a photo, a text description, its availability, dimensions and reviews.  Because the tables carry information about the same products, they have a one to one relationship.

##Release 4: Many to Many

<img src="/imgs/many_to_many_schema.jpeg">

This schema represents a database with two main table that have a many to many relationship, which necessitates the creation of a join table as well.  The two main tables hold information for grocery lists and items that might be included on a grocery list. The join table can display information from both main tables by keeping track of their primary keys, and applying filters.

##Reflection:

Prompt: 

What is a one-to-one database?
When would you use a one-to-one database? (Think generally, not in terms of the example you created).
What is a many-to-many database?
When would you use a many-to-many database? (Think generally, not in terms of the example you created).
What is confusing about database schemas? What makes sense?

A one to one database is a database comprised of tables that have a one to one relationship, as in one instance of one table is related to only one instance of the other table.

You would use a one to one database if you have a table where a group of fields could all potentially be empty.  Instead of risking that many empty fields, which would bloat the table, you would just create another table.

A many to many database is a database comprised of tables that have a many to many relationship, as in multiple instances of one table are related to multiple instances of the other table.

You would use a many to many database if you have information that is very interconnected - i.e. you there are multiple relationships for multiple instances.

There's nothing too confusing about this for me.  It really comes down to how many times will one piece of information have matching information in another table.  If one course has many students and one student have many courses - its a many to many relationship, and if you don't put filters on your data you'll just get the kitchen sink.  If it's a one to one relationship, then there is only one match on either side and the rational is to avoid table bloat with empty fields or to just break up the information for faster load times or something.  The one to many relationship means searching for one piece of information thats matched to many.  For example, if there were no student field in courses, and you just had a link from students to courses - that would be one to many.  But because courses also records students, you have a many to many.



