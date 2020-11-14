package entity

import (
	"bitbucket.org/stephen_cathcart/sanitarium/request"
	"database/sql"
)

// Killer entity.
type Killer struct {
	ID             int       `json:"-"`
	Name           string    `json:"name"`
	Aliases        []*Alias  `json:"aliases"`
	Classification string    `json:"classification"`
	Residence      string    `json:"residence"`
	Appearance     string    `json:"appearance"`
	Background     string    `json:"background"`
	Weapons        []*Weapon `json:"weapons"`
	Misfortune     string    `json:"misfortune"`
	Films          []*Film   `json:"films"`
	Slug           string    `json:"url"`
}

// GetKillerBySlug todo
func (repository *EntityRepository) GetKillerBySlug(slug string) (result *Killer, err error) {
	row := repository.QueryRow("find-killer-by-slug", slug)
	killer, err := readKiller(row)
	if err != nil {
		return nil, err
	}
	repository.fetchChildData(killer)
	return killer, nil
}

// GetRandomKiller todo
func (repository *EntityRepository) GetRandomKiller(query *request.Query) (result *Killer, err error) {
	row := repository.QueryRow("find-random-killer",
		query.Name, // Query aliases matching name
		query.Name,
		query.Weapon,
		query.Classification,
		query.Residence,
	)
	killer, err := readKiller(row)
	if err != nil {
		return nil, err
	}
	repository.fetchChildData(killer)
	return killer, nil
}

func readKiller(row *sql.Row) (result *Killer, err error) {
	var killer Killer
	if err := row.Scan(
		&killer.ID,
		&killer.Slug,
		&killer.Name,
		&killer.Classification,
		&killer.Residence,
		&killer.Appearance,
		&killer.Background,
		&killer.Misfortune,
	); err != nil {
		return nil, err
	}
	return &killer, nil
}

func (repository *EntityRepository) fetchChildData(killer *Killer) {
	repository.fetchAliases(killer)
	repository.fetchWeapons(killer)
	repository.fetchFilms(killer)
	updateSlug(killer)
}

func (repository *EntityRepository) fetchAliases(killer *Killer) {
	aliases, _ := repository.GetAliasesByKillerID(killer.ID)
	killer.Aliases = aliases
}

func (repository *EntityRepository) fetchWeapons(killer *Killer) {
	weapons, _ := repository.GetWeaponsByKillerID(killer.ID)
	killer.Weapons = weapons
}

func (repository *EntityRepository) fetchFilms(killer *Killer) {
	films, _ := repository.GetFilmsByKillerID(killer.ID)
	killer.Films = films
}

func updateSlug(killer *Killer) {
	killer.Slug = "https://api.sanitarium.io/killers/" + killer.Slug
}
