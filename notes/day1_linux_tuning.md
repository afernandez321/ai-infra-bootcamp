# Day 1 – Linux Resource Control

## Commands I Used
- `top`, `htop` → to view processes
- `renice -n 10 -p <PID>` → to lower priority
- `mkdir /sys/fs/cgroup/mygroup` → create cgroup
- `echo 25000 > /sys/fs/cgroup/mygroup/cpu.max` → limit CPU to 25%

## Observations
- My `bash while true` loop consumed ~25% CPU after cgroup limit.
- Without the limit, it pegged one CPU core at 100%.

## Takeaways
- `renice` is useful but temporary.
- Cgroups are stronger: enforce limits at the kernel level.

