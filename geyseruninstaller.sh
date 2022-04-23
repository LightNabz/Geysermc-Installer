#credit
echo -e "\e[34m##################################################"
echo -e "\e[34m#                                                #"
echo -e "\e[34m#                                                #"
echo -e "\e[34m#                MADE BY LIGHNABZ                #"
echo -e "\e[34m#                                                #"
echo -e "\e[34m#                                                #"
echo -e "\e[34m##################################################"

echo -e "\e[0m\e[1mWelcome to Geysermc uninstaller!"

#Installing
read -p "Do you want uninstall Geysermc? (y/n): " yn

    case $yn in
        [yY] ) echo Start Uninstalling, This may take a few minutes..;;
        [nN] ) echo Cancel process..;
               exit;;
           * ) echo Invalid input, Please input y/n..;
               exit 1;;
esac

  rm -rf ~/Geysermc
  rm -rf $PREFIX/bin/geyser-start
  rm -rf $PREFIX/bin/geyser-edit
  
  echo -e "\e[92mGeysermc has succesfully uninstalled!"
