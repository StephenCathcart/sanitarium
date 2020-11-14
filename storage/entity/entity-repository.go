package entity

import (
	"bitbucket.org/stephen_cathcart/sanitarium/storage"
)

// EntityRepository embeds a Repository ready to be extended.
type EntityRepository struct {
	*storage.Repository
}

// NewEntityRepository constructor.
func NewEntityRepository(repository *storage.Repository) *EntityRepository {
	return &EntityRepository{
		repository,
	}
}
