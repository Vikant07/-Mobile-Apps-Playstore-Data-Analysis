---Q1: Which is the most used Android version?
SELECT TOP 5 Android_Ver, COUNT (Android_Ver) AS count_of_vr
FROM playstore
GROUP BY Android_Ver
ORDER BY count_of_vr DESC;

--Q2:Which all categories of mob apps are existing from this dataset?
select Distinct (category) from playstore;

---03: Which is the most installed category of mob app from this dataset?
select category, sum (installs/1000000) as total_installs from playstore
group by category
order by total_installs desc;
--(we are convert total installs in millions )

--03: Which is the most installed category of mob app from this dataset?
select category, sum (installs/1000000) as total_installs from playstore
group by category
order by total_installs desc;
--(we are convert total installs in millions )

---Q4: How many total categories are there?
select count(distinct(category)) as total_category from playstore;

---Q5: Which apps have got 5-star ratings
select count(rating) as total_5_star_rating_apps from playstore
where rating = '5';

--06: - Which are the top 10 mob apps based on ratings?--
SELECT top 10 App, (SUM(rating)) AS ratings
FROM playstore
GROUP BY App
ORDER BY ratings DESC;