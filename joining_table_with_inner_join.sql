CREATE TABLE "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25)
)

CREATE TABLE post(
    id SERIAL PRIMARY KEY,
    text TEXT,
    user_id INTEGER REFERENCES "user"(id) 
)


INSERT INTO "user"(username)
    VALUES ('akash'),('batash'), ('nodi'), ('sagor')



INSERT into post(text, user_id)
    VALUES
    ('akash amr', 1),
    ('batsh tmr', 2),
    ('nodi amr', 3),
    ('sagor tmr', 4)


SELECT * FROM "user"

SELECT * FROM post


SELECT text, username FROM post
    JOIN "user" ON post.user_id = "user".id;


SELECT * FROM post
   INNER JOIN "user" on post.user_id = "user".id;

SELECT post.id FROM post
   JOIN "user" on post.user_id = "user".id;

SELECT "user".id FROM post
   JOIN "user" on post.user_id = "user".id;


SELECT p.id FROM post p
   JOIN "user" on p.user_id = "user".id;            -- alias

SELECT p.id FROM post p
   JOIN "user"u on p.user_id = u.id;                -- alias
   
SELECT p.id FROM post as p
   JOIN "user" as u on p.user_id = u.id;            -- alias

SELECT p.id FROM post as p
   JOIN "user" as u on p.user_id = u.id;   