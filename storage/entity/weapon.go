package entity

// Weapon entity.
type Weapon struct {
	ID   int    `json:"-"`
	Name string `json:"name"`
}

// GetWeaponsByKillerID todo
func (repository *EntityRepository) GetWeaponsByKillerID(id int) (result []*Weapon, err error) {
	var weapons []*Weapon
	rows := repository.Query("find-weapons-by-killer-id", id)
	defer rows.Close()

	for rows.Next() {
		var weapon Weapon
		if err := rows.Scan(
			&weapon.ID,
			&weapon.Name,
		); err != nil {
			return nil, err
		}
		weapons = append(weapons, &weapon)
	}
	err = rows.Err()
	if err != nil {
		return nil, err
	}
	return weapons, nil
}
