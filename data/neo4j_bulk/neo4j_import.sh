neo4j-admin import --id-type=STRING --database=graph.db \
	--multiline-fields=true \
	--relationships=_links.csv \
	--nodes=_nodes.csv \
	--relationships=Membership.csv \
	--nodes=Person.csv \
	--relationships=Ownership.csv \
	--nodes=Company.csv \
	--nodes=Organization.csv \
