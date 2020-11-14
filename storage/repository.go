package storage

import (
	"database/sql"

	"github.com/gchaincl/dotsql"
	_ "github.com/mattn/go-sqlite3"
)

var (
	DB *Repository
)

// Repository containing database connection and queries.
type Repository struct {
	db      *sql.DB
	queries *dotsql.DotSql
}

// NewRepository constructor.
func NewRepository() *Repository {
	return &Repository{
		// Shared cache stops stdlib's sql engine from opening another connection
		db: open("sqlite3", "file::memory:?cache=shared"),
		// db: open("sqlite3", "./.sqlite3"),
	}
}

func open(driverName string, dataSourceName string) *sql.DB {
	db, err := sql.Open(driverName, dataSourceName)
	checkErr(err)
	return db
}

// Initialise creates schema, loads data and loads queries.
func (r *Repository) Initialise() {
	r.execute("./storage/sql/schema.sql", "schema")
	r.execute("./storage/sql/data.sql", "data")

	r.queries = loadDotFile("./storage/sql/queries.sql")
}

func (r *Repository) execute(file string, name string) {
	dot := loadDotFile(file)
	_, err := dot.Exec(r.db, name)
	checkErr(err)
}

func loadDotFile(file string) *dotsql.DotSql {
	dot, err := dotsql.LoadFromFile(file)
	checkErr(err)
	return dot
}

// Query database returning multiple rows.
func (r *Repository) Query(query string, args ...interface{}) *sql.Rows {
	rows, err := r.queries.Query(r.db, query, args...)
	checkErr(err)
	return rows
}

// QueryRow database for one row.
func (r *Repository) QueryRow(query string, args ...interface{}) *sql.Row {
	row, err := r.queries.QueryRow(r.db, query, args...)
	checkErr(err)
	return row
}

// Close database.
func (r *Repository) Close() {
	r.db.Close()
}

func checkErr(err error) {
	if err != nil {
		// Not good to panic
		panic(err)
	}
}
