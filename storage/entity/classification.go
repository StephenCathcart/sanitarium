package entity

// Classification entity.
type Classification string

// GetAllClassifications todo
func (repository *EntityRepository) GetAllClassifications() (result []*Classification, err error) {
	var classifications []*Classification
	rows := repository.Query("find-all-classifications")
	defer rows.Close()

	for rows.Next() {
		var classification Classification
		if err := rows.Scan(&classification); err != nil {
			return nil, err
		}
		classifications = append(classifications, &classification)
	}
	err = rows.Err()
	if err != nil {
		return nil, err
	}
	return classifications, nil
}
