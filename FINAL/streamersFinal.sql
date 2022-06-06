use streamersfinal;

SELECT Online_Alias
FROM streamers
WHERE Country NOT IN
	(SELECT Country FROM streamers
    WHERE Country = 'Canada'
    );