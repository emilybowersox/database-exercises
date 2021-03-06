# Write SQL queries to answer the following questions:
# For a given ad, what is the email address of the user that created it?


select user_email
from users as u
    join ads as a
    on a.user_id = u.user_id
    where ad_id = 0;
-- using 0 as a placeholder for integers

# For a given ad, what category, or categories, does it belong to?

select category
from categories as c
    join ad_category as ac
    on ac.category_id = c.category.id
    join ads as a
    on ac.ad_id = a.ad_id
    where ad_id = 0;

# For a given category, show all the ads that are in that category.

select title
from ads as a
    join ad_category as ac
    on ac.ad_id = a.ad_id
    join categories as c
    on c.category_id = ac.categroy_id
    where c.catergory = "aCategory";
-- using "aCategory" as a placeholder for a string-- could also be
-- category id integer instead of name

# For a given user, show all the ads they have posted.

select title
from ads as a
    join users as u
    on u.user_id = a.user_id
    where u.user_id = 0;