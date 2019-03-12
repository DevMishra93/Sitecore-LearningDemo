$ErrorActionPreference = 'Stop'

$ScriptPath = Split-Path $MyInvocation.MyCommand.Path

# This is an example PowerShell script that will remotely execute a Unicorn sync using the new CHAP authentication system.

Import-Module $ScriptPath\Unicorn.psm1

# SYNC ALL CONFIGURATIONS
Sync-Unicorn -ControlPanelUrl 'http://learningdemo/unicorn.aspx' -SharedSecret 'rqgaKknLdS68nTCX6KUBfUzLctR9AysFyaRVhXsDUyzJ7Jaw67tS5Q46EXMCx6SLx47EJqtXg7p4JK8NPdfBvUZQuXXjMADbfutzNS7Z9dNr6esExPanTPMubdqk2DpsMBHQecSNbzxUdx2q9MFB254kLLzrm9csq49UcuQHG67eb8kuUNUHmn2DCUyCGJWXA9vGfst5UDFUzgctRwL7cX8eyTtS5QnfAQDdPznVfp7Dqqtbxvu6mBrH5xKQag3A'

# SYNC SPECIFIC CONFIGURATIONS
#Sync-Unicorn -ControlPanelUrl 'https://localhost/unicorn.aspx' -SharedSecret 'your-sharedsecret-here' -Configurations @('Test1', 'Test2')

# SYNC ALL CONFIGURATIONS, SKIPPING ANY WITH TRANSPARENT SYNC ON
#Sync-Unicorn -ControlPanelUrl 'https://localhost/unicorn.aspx' -SharedSecret 'your-sharedsecret-here' -SkipTransparentConfigs

# Note: you may pass -Verb 'Reserialize' for remote reserialize. Usually not needed though.

# Note: If you are having authorization issues, add -DebugSecurity to your cmdlet invocation; this will display the raw signatures being used to compare to the server.