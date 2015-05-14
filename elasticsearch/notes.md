- watch doc counts

    watch 'curl -s -XGET 'http://localhost:9200/_cluster/nodes/stats?pretty=true'|grep -A 1 docs|grep count'
