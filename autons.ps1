 ##Auto netsparker

$nsExecPath="C:\Program Files (x86)\Netsparker\Netsparker.exe"
$reportTemplate = "Vulnerabilities List (XML)"
$reportPath= "C:\Users\admin\Desktop\fallsviewcasino\reports\"
foreach ($url in get-content urllist.txt){
$filename=$url.split('//')[2].replace(':','_')
$report = $reportPath+$filename
if ($url.contains('https'))
{
$report = $report+'_https'
}
& $nsExecPath /a /s /r "$report" /rt "$reportTemplate" /p smoke_test /url $url | Out-Null
} 
