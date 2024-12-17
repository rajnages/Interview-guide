# What is ec2 why we used?
1. aws ec2 is (elastic compute cloud) is a scalable service provided by aws. it allows to user rent virtual servers called(ec2 instances) to run websites, application and services with ec2 you can choose the type of ec2 instances. you want need to scale up or down based usage you only what you use.

# Why we used?
1.	Cost effective:
   - No need to buy physical hardware
   - You only pay for what you use
2.	Reliable:
   - Aws takes care of maintenance
   - Keeps applications running 24/7
3.	Flexible:
   - You can make it stronger when need more stuff like (cpu, memory)
   - you can make it weaker when need to remove (cpu, memory)
   - Choose different types based on needs (gaming pc, normal pc)
4.	Easy to use:
   - Simple starting and using
   - No need setup hardware
   - Can access anywhere in the world
5.	Secure:
   - Protected by aws security
   - Regularly checking updates

# Lanch template vs lanch configuration:
1. lanch template is newer version and better way to setup ec2 instances. it supports versioning lets you choose multiple instance types, and works with newer aws features.
2. lanch configuration is a old version to setup instances is doesn't support versioning or advanced options like multiple instance types.

# AMIs
1. An AMI (Amazon Machine Image) is a template used to launch EC2 instances, including the operating system and pre-installed software.

# Instances:
1. an instance in ec2 is virtual servers in aws that can run applications. you can customize cpu, memory, and storage

# ec2 pricing models:
1. on-demand instances => pay only hour/seconds like pay-as-you go model there is no long-term committments => used for developing servers
2. reserved instances => less cost for long term committements like 1-3 years they provide discounts => used of main webisite
3. spot instances => bid for unused capacity a big discount => Mainly used for batch processing.

# ec2 instance types:
1. General purpose: t2, t3, m5 (small and medium applications)
2. Compute optimized: c5, c6g (batch processing)
3. Memory optimized: r5, x1e (databases)
4. Storage optimized: i3, d2 (data ware housing)
5. Accelerated optimized: p3, g4ad (scientific completing)
