select Count(*) as Number_of_Tracks, p.Name
from PlaylistTrack pt
	join Playlist p
		on pt.PlaylistId = p.PlaylistId
group by p.Name