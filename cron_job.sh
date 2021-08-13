export FTM_STORE_URI=postgres://opensanctions:opensanctions@localhost:5432/opensanctions?sslmode=disable
ftm store iterate -d at_poi | ftm aggregate -o data/meineabgeordneten.json
cat data/meineabgeordneten.json | ftm export-csv -o data/csv
cat data/meineabgeordneten.json | ftm export-cypher -o data/cypher.cypher
cat data/meineabgeordneten.json | ftm export-excel -o data/meineabgeordneten.xlsx
cat data/meineabgeordneten.json | ftm export-gexf -o data/meineabgeordneten.gexf
cat data/meineabgeordneten.json | ftm export-neo4j-bulk -o data/neo4j_bulk
cat data/meineabgeordneten.json | ftm export-rdf -o data/meineabgeordneten.ttl