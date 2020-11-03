# ArchConf WorkShop
![Nonproduction Pipeline](https://github.com/dsietziapp/ArchConf/workflows/Nonproduction%20Pipeline/badge.svg)

+ [Hands-On Experience with Data as a Service](https://archconf.com/session?id=46844)
+ [Building a Test Data Generation Service](https://archconf.com/session?id=46792)

---

## Setup

To setup your Cloud9 Environment:

```unix
aws s3 cp s3://iapp-archconf-workshop/workshop.sh workshop.sh
sudo chmod +x workshop.sh
./workshop.sh
```

---

## Kafka

### Starting

__Zookeeper__

In a new terminal ...
```unix
./zookeeper-start.sh
```

__Kafka__

In a new terminal ...
```unix
./kafka-start.sh
```

### Stopping
In a your main terminal ...

__Zookeeper__

```unix
./zookeeper-stop.sh
```

__Kafka__
```unix
./kafka-stop.sh
```

---

+ [Scripts](./scripts/README.md)
+ [CloudformationTemplates](./cloudformation/README.md)