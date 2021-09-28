# What is MDM?

Windows device management enables IT admins to simplify the management of Windows devices used in an enterprise by implementing a Windows MDM solution to secure, manage and monitor these devices. Windows mobile device management helps IT admins to enroll devices, assign them to users, distribute apps and content to them, and enforce security policies on them to prevent data leaks.

# What is Windows MDT/WDS?

You can save time by using the Microsoft Deployment Toolkit (MDT) and Windows Deployment Services (WDS) to deploy Windows client OS from your Windows Server across your network.

# What is Active Directory Certificate Services (AD CS)?

According to Microsoft, AD CS is the “Server Role that allows you to build a public key infrastructure (PKI) and provide public key cryptography, digital certificates, and digital signature capabilities for your organization.”

# What is Master Data Management Concept?

Master Data Management (MDM) is the technology, tools and processes that ensure master data is coordinated across the enterprise. MDM provides a unified master data service that provides accurate, consistent and complete master data across the enterprise and to business 

# What is Endpoint Protection?

1. Security
-Antimalware Policies
-Bitlocker Management
-Windows Defender Firewall Policies
-Microsoft Defender Advanced Thread Protection Policies 
-Windows Defender Exploit Guard 
-Windows Defender Application Guard
-Windows Defender Application Control

# MECM:

Q: What is MECM?
Microsoft Endpoint Configuration Manager is a management platform for Windows endpoints providing inventory, software distribution, operating system imaging, settings and security management.

MECM allows IT administrators to proactively manage equipment life-cycles, efficiently deploy software and policies in a consistent manner, and provide data for troubleshooting computer issues.

More information regrading MECM can be found here.

Q: What information does the MECM client collect as inventory?

Hardware specifications
Applications installed
Services running
List of local user account
Note: Microsoft MECM is NOT configured to collect Application Usage, user login/logout timestamps, or any browsing history.

Q: How does the MECM client work?

SCCM consists of a primary site server and a client installed on each managed computer.

The SCCM client checks with the server at three different intervals:

Every 60 minutes - check for new policies
Once a day - upload software inventory
Once a week - upload hardware inventory
Currently, the MECM server is only accessible from the MIT network (on-campus and through the VPN).

Q: How is the MECM client installed on the computer?

The client is installed on all computers on the WIN domain under the Machines/Endpoints OU. Additionally it can be optionally enabled for any other OU by GPO.

Q: What changes will I see once the MECM client is installed on my computer?

A new entry for Configuration Manager will appear in the Control Panel (under System and Security if viewing by category).
Three folders are created under C:\Windows - ccm (logs), ccmcache (downloaded apps), ccmsetup (setup files).
Software Center entry will appear in the start menu. The exe is located at C:\Windows\ccm\SCClient.exe
Q: Will you be installing software on the computer?
Since MECM is a tool to assist in managing Windows clients, certain policies and software can be centrally deployed.

Clients will be informed in conjunction with their IT Consultant before any changes are applied.

Q: What is the Self Service App?

A self service application simply called "Software Center" will be present on any computer with the MECM client installed. This is a portal that provides access for end users to install applications and printers. Items from the Software Center can be installed by the end user, even if they are not a local administrator of that particular computer.

Q. How do I uninstall the MECM client?

It can be uninstalled by running Ccmsetup.exe /uninstall from the command line. The ccmsetup.exe file is typically stored at C:\Windows\ccmsetup.

# What is CMPivot?

Starting in version 1806, CMPivot is a new in-console utility that now provides access to real-time state of devices in your environment. It immediately runs a query on all currently connected devices in the target collection and returns the results. Then filter and group this data in the tool.

# What is CMG?

The cloud management gateway (CMG) provides a simple way to manage Configuration Manager clients over the internet. You deploy CMG as a cloud service in Microsoft Azure. Then without more on-premises infrastructure, you can manage clients that roam on the internet or are in branch offices across the WAN. You also don't need to expose your on-premises infrastructure to the internet.


