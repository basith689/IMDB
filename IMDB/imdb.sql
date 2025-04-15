SELECT * FROM imdb_data.imdb_movies;

-- 1. Top 10 Highest Rating Movies

select Title, Rating
from imdb_movies
order by Rating Desc
limit 10;

-- 2. Count by content Rating

select `Content Rating`, count(*) as count
from imdb_movies
group by `Content Rating`
order by count desc;

-- 3. top 5 Average rating by decade
select round((Year/10)* 10 )as decade, avg(`Content Rating`) as avg_Rating
from imdb_movies
group by decade
order by decade desc
limit 5;

-- 4. Count of Movies Released Each Year

select Year, count(*) as count
from imdb_movies
group by Year
order by Year desc
limit 10;


