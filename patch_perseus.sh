＃！/bin/bash
＃下载apkeep
get_artifact_download_url（）{
    ＃使用：get_download_url <Repo_name> <trifact_name> <file_type># Usage: get_download_url <repo_name> <artifact_name> <file_type>
    local api_url =“ https://api.github.com/repos/qul $ 1/releases/latest”api_url="https://api.github.com/repos/$1/releases/latest"
    本地结果= $（curl  $ api_url | JQ” .ASSETS [] |选择（.name |包含（\ \ \ \ \ \ \ \ \ \ \ \ \ “ $ 3 \”（“ $ 3 \”）（（contheres）contheres（持续）（\ \ sig \ sig \ sig \ \ \ \ \ \ \'不是（browser_browser_browser_download_download_download_url load_url load_url result_url = $ （curl $ api_url | j | $ 2 \“）和包含（\“ $ 3 \”）和（包含（\“。sig \”）| not））| .browser_download_url”）
    echo $ {结果：1：-1} $ {结果：1：-1}
}

＃工件关联阵列又名词典
声明-工件-a伪像

伪像[“ apkeep”] =“ efforg/apkeep-x86_64-innownown-linux-gnu”"apkeep"]="EFForg/apkeep apkeep-x86_64-unknown-linux-gnu"
文物[“ apktool.jar”] =“ ibotpeaches/apktool apktool .jar”“ apktool.jar” ] = “ ibotpeaches/apktool apktool .jar”

＃获取所有依赖关系
对于“ $ {！artifacts [@]}的伪像;做in "${!artifacts[@]}"; do
    如果 [ ！ -f $ trifact];然后if [ ! -f $artifact ]; then
        回声“下载$ trifact”"Downloading $artifact"
        curl -l  -l  -l -o  $ trifact  $（get_artifact_download_url  $ {artifacts [ $ trifact ]}） -  l -o  $ $ $ artifact $（get_artifact_download_url $ {artifacts [aftifacts [ $ artifact ]}）
    fifi
完毕

chmod +x apkeep

＃下载Azur Lane
if如果 [ ！ -f“ com.bilibili.azurlane.apk”];然后-f "com.bilibili.AzurLane.apk" ]; then
    回声“获取Azur Lane Apk”"Get Azur Lane apk"

    ＃例如：WGET“您的下载链接” -O“您的Packge name.apk” -Q# eg: wget "your download link" -O "your packge name.apk" -q
    ＃如果您想修补.xapk，请在此处更改后缀以wget“您的下载链接” -O“ packge name.xapk” -Q#if you want to patch .xapk, change the suffix here to wget "your download link" -O "your packge name.xapk" -q
    WGET https://pkg.biligame.com/games/bhlhx_9.5.11_0427_1_20250506_09507_095207_d4e3f.apk -o com.izuriline.apk -q   -Q  -Q  -Q -Q    -O com.bibil -q    -q -q  -q -q    -o com.bibil.azuribil.apk -q。
    回声“下载了APK！”"apk downloaded !"
    
    ＃如果您只能下载以下2行2行。 （删除'＃'）# if you can only download .xapk file uncomment 2 lines below. (delete the '#')
    comsostjp。
    #cp azurlane/com.yostarjp.azurlane.apk。
fi

＃下载Perseus
如果[ ！-d  “ Perseus” ];然后
    回声“下载珀尔修斯”
    git克隆https://github.com/egoistlye/perseus
fi

回声“反编译Azur Lane APK”
java -jar apktool.jar -q  -q -q   -q    -q -q  -q -q   -q  -q -q     -f d com.bilibili.azurlane.apk

回声“复制珀尔修斯libs”
cp -r perseus/。com.able.azurlare/lib/

Echo “用珀尔修斯对Azur Lane进行补丁”
onCreate = $（grep    -n -m    1'oncreate'com.bilibili.azurlane    / smali_classes2/com/com/com/com/com/com/com/com/com/com/com/unity3d/player/unityplayeractivity.smali | SED S/S/[      0 -9 ]  
sed -ir     “ s＃ \（$ ongreate \）＃。
   保留/ s负载；   

Echo “构建修补了Azur Lane APK”
java -jar apktool.jar -q -q  -q   -Q  -f b com.bilibili.azurlane -o build/com.bilibili.azurlane.patched.apk

回声“设置github发行版”
s =（$（）。
echo“ pereute_version = $（{s [-1]}）>> $ github_env
