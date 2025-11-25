# System Architecture

## Network Flow
1. **External Traffic** → Traefik Load Balancer (192.168.50.100)
2. **Internal Routing** → NodePort Services (30000-30002)
3. **Application Layer** → ClusterIP Services
4. **Data Layer** → MariaDB Service

## High Availability
- Multiple application replicas
- Dedicated database service
- Load-balanced external access
