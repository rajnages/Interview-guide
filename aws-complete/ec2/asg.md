# what is autoscaling group:
1. AWS ASG automatically add or remove ec2 instances based on demand. Think of it like a restaurant automatically adding more chefs during busy hours and reducing staff quiet hours. It helps maintain applications availability and optimize costs.

2. luanch template is blue print for new instance.
3. scaling policies
    1. targate tracking policies : automatically adjusts the size of the ASG to maintain a specified target for a cloudwatch metric
   ->example: keep cpu utilization at 50%
    2. Step scaling policies: performs specific scaling actions based on metric thresholds with defined steps for different ranges.
    ->example: add 1 instance when cpu > 60%
               add 2 instances when cpu > 80%
               remove 1 instance when cpu < 40%
    3. simple scaling policy: executes a single scaling action when a metric exceeds a threshold.
         -> example : add 1 instance when cpu > 60%
                      add 2 instances when cpu > 80%
=> scheduled policies / actions: Scales the ASG at pre-defined times:
1. example: scale up tp 10 instances at 8 AM every weekday
2. example: scale down to 2 instances at 10 PM every night
=> predictive poliices
1. example: Scale out before a high traffic period (e.g., a flash sale).
2. example: Scale in during low demand hours.
=> instance refresh: replaces existing instances in the ASG with new ones to apply updates
1. example: rolling out a new ami version across all instances
2. example: switching to a new instance type(e.g from t2.micro to t3.micro)
=> lifecycle hook: autoscaling process to perform custom actions during instance lanch or termination
1. example: run configuration scripts or install software on a new instace.


# horizontal scaling and vertical scaling
=>Horizontal Scaling
1. Meaning: Changing the number of servers (instances) based on demand to ensure smooth application performance and avoid paying for unused resources.
Example: Adding or removing servers to handle changing traffic.
-> Ways to Achieve in AWS:
1. Target Tracking Policy: Adjusts servers to maintain a specific metric, like CPU usage using cloudwatch.
   example : keep cpu utilization at 50%
2. Scheduled Actions: Scales at specific times (e.g., business hours).
   example: scale up tp 10 instances at 8 AM every weekday
   example: scale down to 2 instances at 10 PM every night
3. Scaling Policy: Adjusts servers based on custom-defined conditions.
   add 1 instance when cpu > 60%
   add 2 instances when cpu > 80%
   remove 1 instance when cpu < 40%
=> Vertical Scaling
1. Meaning: Upgrading (or downgrading) the existing server to handle more (or less) work, instead of adding more servers.
Example: Changing the instance type (e.g., from t2.micro to t2.large) to increase server capacity.
-> Ways to Achieve in AWS:
Instance Refresh: Slowly replaces old servers in a group with new, upgraded servers, one at a time.
