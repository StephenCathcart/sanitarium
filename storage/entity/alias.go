package entity

// Alias entity.
type Alias struct {
	ID   int    `json:"-"`
	Name string `json:"name"`
}

// GetAliasesByKillerID todo
func (repository *EntityRepository) GetAliasesByKillerID(id int) (result []*Alias, err error) {
	var aliases []*Alias
	rows := repository.Query("find-aliases-by-killer-id", id)
	defer rows.Close()

	for rows.Next() {
		var alias Alias
		if err := rows.Scan(
			&alias.ID,
			&alias.Name,
		); err != nil {
			return nil, err
		}
		aliases = append(aliases, &alias)
	}
	err = rows.Err()
	if err != nil {
		return nil, err
	}
	return aliases, nil
}
