# this assumes you already have JRE installed if not, go here
# https://www.java.com/en/download/manual.jsp

$GH_USER="MesquiteProject"
$GH_REPO="MesquiteCore"
$GH_BRANCH="v3.81-build955"

# from here
# https://github.com/MesquiteProject/MesquiteCore/releases/tag/v3.81-build955
$github_release="https://github.com/${GH_USER}/${GH_REPO}/releases/download/$GH_BRANCH/Mesquite.3.81-Windows.zip"

curl $github_release -o "${GH_REPO}-${GH_BRANCH}.zip"

Write-Output "Expanding zip file"
Expand-Archive -Path "${GH_REPO}-${GH_BRANCH}.zip"
Remove-Item "./${GH_REPO}-${GH_BRANCH}.zip"