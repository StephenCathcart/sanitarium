package entity

// Victim entity.
type Victim struct {
	ID    int    `json:"-"`
	Name  string `json:"name"`
	Death string `json:"death"`
	Time  uint   `json:"time"`
}

// GetVictimsByFilmID todo
func (repository *EntityRepository) GetVictimsByFilmAndKillerID(filmID, killerID int) (result []*Victim, err error) {
	var victims []*Victim
	rows := repository.Query("find-victims-by-film-and-killer-id", filmID, killerID)
	defer rows.Close()

	for rows.Next() {
		var victim Victim
		if err := rows.Scan(
			&victim.ID,
			&victim.Name,
			&victim.Death,
			&victim.Time,
		); err != nil {
			return nil, err
		}
		victims = append(victims, &victim)
	}
	err = rows.Err()
	if err != nil {
		return nil, err
	}
	return victims, nil
}
