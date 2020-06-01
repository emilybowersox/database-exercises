# Write SQL queries to answer the following questions:
# For a given ad, what is the email address of the user that created it?


select user_email
from users as u
    join ads as a
    on a.ad_creator = u.user_id
    where ad_id = [ad you're searching for'];

# For a given ad, what category, or categories, does it belong to?

select category
from categories as c
    inner join ad_category as ac
    on ac.category_id = c.category.id
    inner join ads as a
    on ac.ad_id = a.ad_id
    where ad_id = [ad you're searching for'];

# For a given category, show all the ads that are in that category.

select title
from ads as a
    inner join ad_category as ac
    on ac.ad_id = a.ad_id
    inner join categories as c
    on c.category_id = ac.categroy_id
    where c.catergory = [category you're searching for'];

# For a given user, show all the ads they have posted.