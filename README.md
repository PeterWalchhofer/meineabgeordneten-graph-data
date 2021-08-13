# Austrian politicians, head of departments and members of the "Corona commission"

This is a dataset scraped from [meineabgeordneten.at](http://meineabgeordenten.at) about Austrian persons of interest and their ties to organizations, societies and parties. In addition, companies and their ownership structure are covered. The data contains historical data as well as up to date information as listed at meineabgeordneten.at. All props go to them and their great project. The data was collected for my bachelor thesis that covered investigative journalism and the use of linked data for data driven investigation.

Feel free to use the data in other projects and give credit to meineabgeordneten.at.

# Technical Information

The source format is "Follow the Money" (FtM) by the OCCRP (Organized Crime and Corruption Project). See the following resources:

- https://followthemoney.readthedocs.io/en/latest/index.html
- https://docs.alephdata.org/developers/followthemoney

The graph format can also be exported to RDF, CSV, XLSX, CYPHER (Neo4j) and GEXF (Gephi) and has been done in advance. If you want to augment the reification process of creating graph data from JSON, e.g. defining what should be a property and what a node, use the FtM CLI.

`pip install followthemoney`

With the FtM CLI, you can transform, modify and extend the data, e.g. in a juptyer notebook. For futher analyses, this is highly recommended.

## Aleph FtM Graph visualization
If you want to visualize it, use [Aleph](https://aleph.occrp.org), a free and open-source platform for (investigative) journalists. By using Aleph, the data can be modified, extended and shared.

![networkOfPower](img/politicians_ftm.JPG)

Also, you find links to other datasets, leaks and documents that Aleph holds or that you uploaded. For example, one can automatically discover mentions of polticians (or tied organizations) from a leaked data dump.

## Neo4j
For using neo4j, you can use the neo4h_bulk export or the cypher commands.  

![networkOfPower](img/neo4j.JPG)

With Linkurious you can also explore the network interactively.

## Gephi
Also Gephi can be used to analyze the network.
![networkOfPower](img/gephi.png)


# Ingest into Aleph

To ingest the data into the public or a private Aleph instance do the following:

1. `pip install alephclient`
2. Log into Aleph and get the API-Key (see settings) and the collection-ID. For this create a new investigation and get the foreign ID on the bottom right.
3. `cat data/meineabgeordneten.json | alephclient --host <e.g. https://occrp.aleph.org> --api-key <aleph-api-key> write-entities -f <collectionId>`

# Data acquisition 

The data has been scraped by using Memorious, a scraping framework used by Aleph. See resources:

- https://github.com/pudo/opensanctions

- https://www.opensanctions.org

- https://docs.alephdata.org/developers/memorious

[Here](https://github.com/PeterWalchhofer/opensanctions) is the scraping script + the forked OpenSanctions repository (that builds upon memorious) to run it on your own.
See `cron_job.sh` in THIS repo to see how one can use it.

You can easily rewrite the script for using it without OpenSanctions.