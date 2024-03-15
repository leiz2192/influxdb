module github.com/influxdata/influxdb

go 1.13

require (
	cloud.google.com/go/bigtable v1.2.0 // indirect
	collectd.org v0.3.0
	github.com/BurntSushi/toml v0.3.1
	github.com/apache/arrow/go/arrow v0.0.0-20191024131854-af6fa24be0db
	github.com/benbjohnson/tmpl v1.1.0
	github.com/bmizerany/pat v0.0.0-20170815010413-6226ea591a40
	github.com/cespare/xxhash v1.1.0
	github.com/davecgh/go-spew v1.1.1
	github.com/dgrijalva/jwt-go/v4 v4.0.0-preview1
	github.com/dgryski/go-bitstream v0.0.0-20180413035011-3522498ce2c8
	github.com/fsnotify/fsnotify v1.6.0
	github.com/glycerine/go-unsnap-stream v0.0.0-20180323001048-9f0cb55181dd // indirect
	github.com/glycerine/goconvey v0.0.0-20190410193231-58a59202ab31 // indirect
	github.com/gogo/protobuf v1.3.2
	github.com/golang/groupcache v0.0.0-20210331224755-41bb18bfe9da // indirect
	github.com/golang/snappy v0.0.4
	github.com/google/go-cmp v0.5.9
	github.com/influxdata/flux v0.65.1
	github.com/influxdata/influxql v1.1.1-0.20200828144457-65d3ef77d385
	github.com/influxdata/pkg-config v0.2.8
	github.com/influxdata/roaring v0.4.13-0.20180809181101-fc520f41fab6
	github.com/influxdata/usage-client v0.0.0-20160829180054-6d3895376368
	github.com/jsternberg/zap-logfmt v1.0.0
	github.com/jwilder/encoding v0.0.0-20170811194829-b4e1701a28ef
	github.com/klauspost/crc32 v0.0.0-20161016154125-cb6bfca970f6 // indirect
	github.com/klauspost/pgzip v1.0.2-0.20170402124221-0bf5dcad4ada
	github.com/mattn/go-colorable v0.1.12 // indirect
	github.com/mattn/go-isatty v0.0.16
	github.com/mschoch/smat v0.0.0-20160514031455-90eadee771ae // indirect
	github.com/opentracing/opentracing-go v1.0.3-0.20180606204148-bd9c31933947
	github.com/panjf2000/ants/v2 v2.8.1
	github.com/paulbellamy/ratecounter v0.2.0
	github.com/peterh/liner v1.0.1-0.20180619022028-8c1271fcf47f
	github.com/philhofer/fwd v1.0.0 // indirect
	github.com/pkg/errors v0.9.1
	github.com/prometheus/client_golang v1.11.1
	github.com/retailnext/hllpp v1.0.1-0.20180308014038-101a6d2f8b52
	github.com/segmentio/kafka-go v0.2.0 // indirect
	github.com/smartystreets/goconvey v1.6.4 // indirect
	github.com/spf13/cast v1.5.1
	github.com/spf13/pflag v1.0.5 // indirect
	github.com/stretchr/testify v1.8.3
	github.com/tinylib/msgp v1.0.2
	github.com/willf/bitset v1.1.3 // indirect
	github.com/xlab/treeprint v0.0.0-20180616005107-d6fb6747feb6
	go.uber.org/atomic v1.9.0 // indirect
	go.uber.org/multierr v1.8.0 // indirect
	go.uber.org/zap v1.21.0
	golang.org/x/crypto v0.9.0
	golang.org/x/sync v0.1.0
	golang.org/x/sys v0.8.0
	golang.org/x/text v0.9.0
	golang.org/x/time v0.3.0
	golang.org/x/tools v0.7.0
	google.golang.org/api v0.122.0 // indirect
	google.golang.org/grpc v1.55.0
	gopkg.in/natefinch/lumberjack.v2 v2.2.1
	gopkg.in/yaml.v2 v2.4.0 // indirect
)

replace github.com/influxdata/influxql => ./dev/github.com/influxdata/influxql
