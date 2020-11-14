package entity

// Film entity.
type Film struct {
	ID      int       `json:"-"`
	Title   string    `json:"title"`
	Year    uint      `json:"year"`
	Length  uint      `json:"length"`
	Victims []*Victim `json:"victims"`
}

// GetFilmsByKillerID todo
func (repository *EntityRepository) GetFilmsByKillerID(id int) (result []*Film, err error) {
	var films []*Film
	rows := repository.Query("find-films-by-killer-id", id)
	defer rows.Close()

	for rows.Next() {
		var film Film
		if err := rows.Scan(
			&film.ID,
			&film.Title,
			&film.Year,
			&film.Length,
		); err != nil {
			return nil, err
		}
		films = append(films, &film)
	}
	for _, film := range films {
		repository.fetchVictims(id, film)
	}
	err = rows.Err()
	if err != nil {
		return nil, err
	}
	return films, nil
}

func (repository *EntityRepository) fetchVictims(killerID int, film *Film) {
	victims, _ := repository.GetVictimsByFilmAndKillerID(killerID, film.ID)
	film.Victims = victims
}
