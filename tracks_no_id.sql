select 
	t.Name as Track_Name, 
	a.Title as Album_Title,
	mt.Name as Media_Type,
	g.Name as Genre
from Track t
	join Album a
		on t.AlbumId = a.AlbumId
	join Genre g
		on t.GenreId = g.GenreId
	join MediaType mt
		on t.MediaTypeId = mt.MediaTypeId
order by Album_Title