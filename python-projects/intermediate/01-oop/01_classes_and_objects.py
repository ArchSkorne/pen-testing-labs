# Lesson 1: Creating Your First Class
# A cybersecurity-focused introduction to OOP

# Problem: We need to represent network devices in our security assessments
# Instead of using separate variables for each device, let's use a class

class NetworkDevice:
    """
    A class to represent network devices in our security assessments
    """
    
    def __init__(self, ip_address, device_type, os_version):
        # Constructor method - runs when object is created
        self.ip_address = ip_address
        self.device_type = device_type
        self.os_version = os_version
        self.is_vulnerable = False  # Default state
        self.open_ports = []
    
    def add_open_port(self, port, service):
        """Add an open port and its service"""
        port_info = {"port": port, "service": service}
        self.open_ports.append(port_info)
    
    def mark_vulnerable(self, vulnerability):
        """Mark device as vulnerable with details"""
        self.is_vulnerable = True
        self.vulnerability_details = vulnerability
    
    def get_device_info(self):
        """Return formatted device information"""
        status = "VULNERABLE" if self.is_vulnerable else "SECURE"
        return f"""
        Device: {self.device_type}
        IP: {self.ip_address}
        OS: {self.os_version}
        Status: {status}
        Open Ports: {len(self.open_ports)}
        """

# Creating objects (instances) of our class
if __name__ == "__main__":
    # Create a router
    router = NetworkDevice("192.168.1.1", "Router", "Cisco IOS 15.1")
    router.add_open_port(22, "SSH")
    router.add_open_port(80, "HTTP")
    router.mark_vulnerable("Default credentials detected")
    
    # Create a server
    web_server = NetworkDevice("10.0.1.100", "Web Server", "Ubuntu 20.04")
    web_server.add_open_port(80, "HTTP")
    web_server.add_open_port(443, "HTTPS")
    
    # Display information
    print("=== NETWORK SECURITY ASSESSMENT ===")
    print(router.get_device_info())
    print(web_server.get_device_info())
    
    # Exercise for you:
    # 1. Create a database server object
    # 2. Add some open ports (3306 for MySQL, 5432 for PostgreSQL)
    # 3. Try marking it as vulnerable
    # 4. Print its information