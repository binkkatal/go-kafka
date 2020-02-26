# GO-KAFKA

The go-kafka uses `github.com/Shopify/sarama` this libray to connect with kafka.
This repository is divided into 2 parts,

Producer -> allows applications to send streams of data to topics in the Kafka cluster

Consumer ->  allows applications to read streams of data from topics in the Kafka cluster

## Building the project
    make build


## Producer

The Producer program creates a `SyncProducer` with the help of `brokerList` and `configuration` and publishes the message to a specified topic.

the producer cli has the following options where broker list and topic can be configured

```
Flags:
  --help               Show context-sensitive help (also try --help-long and --help-man).
  --brokerList=localhost:9092 ...  
                       List of brokers to connect
  --topic="important"  Topic name
  --maxRetry=5         Retry limit

Args:
  <message>  message to be sent
```

### Running Producer
    
    make run-producer

## Consumer

The consumer program creates a PartitionConsumer on the given topic/partition with
the given offset. It will return an error if this Consumer is already consuming
on the given topic/partition. Offset can be a literal offset, or OffsetNewest or OffsetOldest.

The consumer cli program has the following configurabe options

```
--brokerList=localhost:9092 ...  
                       List of brokers to connect
  --topic="important"  Topic name
  --partition="0"      Partition number
  --offsetType=-1      Offset Type (OffsetNewest | OffsetOldest)
  --messageCountStart=MESSAGECOUNTSTART  
                       Message counter start from:
```

### Running consumer

    make run-consumer