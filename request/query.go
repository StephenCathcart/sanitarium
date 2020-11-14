package request

// Query entity.
type Query struct {
	Name           string
	Weapon         string
	Classification string
	Residence      string
}

// Query constructor.
func NewQuery(name, weapon, classification, residence string) *Query {
	return &Query{
		Name:           name,
		Weapon:         weapon,
		Classification: classification,
		Residence:      residence,
	}
}
