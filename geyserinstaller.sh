echo -e "\e[1mWelcome to Geysermc Installer!"

#Installing
read -p "Do you want install Geysermc? (y/n)" yn

    case $yn in
        [yY] ) echo Start Downloading, This may take a few minutes..;;
        [nN] ) echo Cancel process..;
               exit;;
           * ) echo Invalid input, Please input (y/n)..;
               exit 1;;
esac

    cd ~
    apt install wget &> /dev/null
    apt install nano &> /dev/null
    apt install openjdk-17 &> /dev/null
    wget --no-check-certificate https://ci.opencollab.dev//job/GeyserMC/job/Geyser/job/master/lastSuccessfulBuild/artifact/bootstrap/standalone/target/Geyser.jar &> /dev/null
    mkdir Geysermc &> /dev/null
    mv Geyser.jar ~/Geysermc &> /dev/null
    echo nano ~/Geysermc/config.yml >> $PREFIX/bin/geyser-edit &> /dev/null
    chmod +x $PREFIX/bin/geyser-edit &> /dev/null
    echo java -Xmx1024M -Xms1024M -jar ~/Geysermc/Geyser.jar >> $PREFIX/bin/geyser-start &> /dev/null
    chmod +x $PREFIX/bin/geyser-start &> /dev/null
    echo ""
#Fin(n)ish

    echo -e "\e[92mGeysermc has successfully installed!"
    echo -e "For starting geyser type, \e[1mgeyser-start"
    echo -e "For edit config.yml type, \e[1mgeyser-edit"
    echo -e "For stopping geyser type, \e[1mgeyser stop\e[0m, without '-'"
