SELECT content, date from forum_posts WHERE date BETWEEN '2048-04-01' AND '2048-04-30';
-- this let me find 2048-04-08 00:00:00 as the date when a post mentioned EmptyStack
SELECT * from forum_posts WHERE date = '2048-04-08 00:00:00'
--This found me the entire post which got me the username smart-money-44 could have done just author but i wnated full context of the post
SELECT last_name FROM forum_accounts WHERE username = 'smart-money-44';
--This got me the needed last name Steele onto finding the other account
SELECT username FROM forum_accounts WHERE last_name = 'Steele';
--This gave me two new usernames to check those being sharp-engine-57 and stinky-tofu-98
SELECT username, first_name FROM emptystack_accounts WHERE last_name = 'Steele';
SELECT username, first_name FROM forum_accounts WHERE last_name = 'Steele';
--had to back track as I thought the usernames would be the same found Andrew Steele with these
SELECT username, first_name, password FROM emptystack_accounts WHERE first_name = 'Andrew';
--got full details on him with this password being pasword456
SELECT * FROM emptystack_messages WHERE subject ILIKE '%tax%';
--used this to find the message about the project giving me the admin account your-boss-99
SELECT * FROM emptystack_accounts WHERE username = 'your-boss-99';
--this got me the boss info of notagaincarter Skyler Singer
SELECT id FROM emptystack_projects WHERE code = 'TAXI';
--got the id DczE0v2b with this
