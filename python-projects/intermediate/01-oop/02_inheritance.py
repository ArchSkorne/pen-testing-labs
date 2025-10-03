# Lesson 2: Inheritance in Cybersecurity Tools
# Building on our NetworkDevice class with specialized devices

from datetime import datetime

class SecurityTool:
    """Base class for all security tools"""
    
    def __init__(self, name, version):
        self.name = name
        self.version = version
        self.scan_results = []
        self.last_scan = None
    
    def start_scan(self, target):
        """Base method that all tools should implement"""
        print(f"Starting {self.name} scan on {target}")
        self.last_scan = datetime.now()
    
    def save_results(self, results):
        """Save scan results"""
        self.scan_results.append({
            'timestamp': datetime.now(),
            'results': results
        })

class PortScanner(SecurityTool):
    """Specialized tool for port scanning"""
    
    def __init__(self, version="1.0"):
        super().__init__("Port Scanner", version)  # Call parent constructor
        self.scan_type = "TCP"
        self.port_range = "1-1000"
    
    def start_scan(self, target):
        """Override parent method with specific implementation"""
        super().start_scan(target)  # Call parent method first
        print(f"Scanning ports {self.port_range} on {target}")
        
        # Simulate finding open ports
        open_ports = [22, 80, 443, 3389]
        results = f"Found {len(open_ports)} open ports: {open_ports}"
        self.save_results(results)
        return open_ports

class VulnerabilityScanner(SecurityTool):
    """Specialized tool for vulnerability scanning"""
    
    def __init__(self, version="2.1"):
        super().__init__("Vulnerability Scanner", version)
        self.database_version = "2024.10"
        self.severity_filter = "HIGH"
    
    def start_scan(self, target):
        """Vulnerability-specific scanning"""
        super().start_scan(target)
        print(f"Checking {target} against CVE database {self.database_version}")
        
        # Simulate vulnerability findings
        vulnerabilities = [
            "CVE-2024-1234: Remote Code Execution (CRITICAL)",
            "CVE-2024-5678: SQL Injection (HIGH)"
        ]
        results = f"Found {len(vulnerabilities)} vulnerabilities"
        self.save_results(results)
        return vulnerabilities

# Demonstration
if __name__ == "__main__":
    # Create different types of scanners
    port_scanner = PortScanner()
    vuln_scanner = VulnerabilityScanner("3.0")
    
    target_ip = "192.168.1.100"
    
    print("=== SECURITY ASSESSMENT TOOLKIT ===\n")
    
    # Run port scan
    open_ports = port_scanner.start_scan(target_ip)
    print(f"Results: {port_scanner.scan_results[-1]['results']}\n")
    
    # Run vulnerability scan  
    vulns = vuln_scanner.start_scan(target_ip)
    print(f"Results: {vuln_scanner.scan_results[-1]['results']}\n")
    
    # Exercise for you:
    # 1. Create a WebScanner class that inherits from SecurityTool
    # 2. Make it scan for common web vulnerabilities (XSS, SQLi, etc.)
    # 3. Override the start_scan method with web-specific logic
    # 4. Test it on a target URL