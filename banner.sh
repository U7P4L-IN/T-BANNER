#!/data/data/com.termux/files/usr/bin/bash
#@Author U7P4L
#Update at 21 JAN 2024
#Version 1.2
#Define some color code----
r="\e[31;1m"
g="\e[32;1m"
y="\e[33;1m"
pu="\e[35;1m"
o="\e[36;1m"
y="\e[95;1m"
w="\e[0;1m"
#Colour coding end here-----
#Trap user signal-----
trap user_inttrupt SIGINT
trap user_inttrupt SIGTSTP
#Make a function to catch signals---
user_inttrupt(){
	echo -e "${r}[${y}!${r}] ${pu} Exiting T-BANNER--->"
	sleep 2
	exit 1
}
#Make a function to catch all update ---
repo_update(){
	git pull https://github.com/U7P4L-IN/T-BANNER.git > /dev/null 2>&1
	clear 
}
repo_update
#Make a function to chech all requirements----
req_(){
	which cowsay 2>&1 >> /dev/null  || { echo -e "${g}[${r}+${g}] ${y} Installing Cowsay" ;apt-get install cowsay;}
	which figlet 2>&1 >> /dev/null || { echo -e "${g}[${r}+${g}] ${y} Installing figlet" ;apt-get install figlet;}
	which neofetch 2>&1 >> /dev/null || { echo -e "${g}[${r}+${g}] ${y} Installing neofetch" ;apt-get install neofetch;}
	which ruby 2>&1 >> /dev/null || { echo -e "${g}[${r}+${g}] ${y} Installing Ruby" ;apt-get install ruby;gem install lolcat;}

}
req_
#Lets make a copy -----
cp_files(){
	cd 
	cd ..
	
	cd usr/etc
        rm -rf motd
	mkdir backup_TB
	cp bash.bashrc backup_TB
	cd 
	cd T-BANNER

	
}
cp_files

#Make a banner for This tool
banner(){
	clear
	am start -a android.intent.action.VIEW -d https://github.com/U7P4L-IN > /dev/null 2>&1
	clear
	echo -e "${y}
                                     
 
 TTTTTT     BBBB   AA  N   N N   N EEEE RRRR  
   TT       B   B A  A NN  N NN  N E    R   R 
   TT       BBBB  AAAA N N N N N N EEE  RRRR  
   TT       B   B A  A N  NN N  NN E    R R   
   TT       BBBB  A  A N   N N   N EEEE R  RR 
                                   
     ${g} DEVLOPER : U7P4L 1N
     ${r} GITHUB   : https://github.com/U7P4L-IN
     ${r} TELEGRAM : https://t.me/TheU7p4lArmyX
		"

}
banner


#Make a function for handling os request
set_os(){
	echo -e "\n"
	cd ~
	cd ..
	cd usr/etc
	os=$1
	echo -e "neofetch --ascii_distro ${os}" >> bash.bashrc
	sleep 2
	cd 
	cd T-BANNER

}

#Ask user for set the os-- logo
echo -ne "${g}[${y}~${g}] ${w} Press Y for Show the os logo(default|N): "
read o_optn #Reading for os option-----
if [[ $o_optn == "y" || $o_optn == "Y" ]];then
	echo " "
	echo -e "${r} Operating System Logoes"
	echo -e "\n"
	echo -e "  ${w}[${g}01${w}] ${y} Kali"
	echo -e "  ${w}[${g}02${w}] ${y} Android"
	echo -e "  ${w}[${g}03${w}] ${y} Ubantu"
	echo -e "  ${w}[${g}04${w}] ${y} Gnu"
	echo -e "  ${w}[${g}05${w}] ${y} Arch"
	echo -e "  ${w}[${g}06${w}] ${y} Blackarch"
	echo -e "  ${w}[${g}07${w}] ${y} Parrot"
	echo -e "  ${w}[${g}08${w}] ${y} DragonFly"
	echo -e "  ${w}[${g}09${w}] ${y} Popos"
	echo -e "  ${w}[${g}10${w}] ${y} Garuda"
	echo -e "\n"
	echo -ne "${w}[${g}~${w}] ${y} Select An Option >"
	read os_ch #Readind for os choise---
	if [[ $os_ch == "1" || $os_ch == "01" ]];then
		set_os "Kali"
	elif [[ $os_ch == "2" || $os_ch == "02" ]];then
		set_os "Android"
	elif [[ $os_ch == "3" || $os_ch == "03" ]];then
		set_os "Ubamtu"
	elif [[ $os_ch == "4" || $os_ch == "04" ]];then
		set_os "Gnu"
	elif [[ $os_ch == "5" || $os_ch == "05" ]];then
		set_os "Arch"
	elif [[ $os_ch == "6" || $os_ch == "06" ]];then
		set_os "Blackarch"
	elif [[ $os_ch == "7" || $os_ch == "07" ]];then
		set_os "Parrot"
	elif [[ $os_ch == "8" || $os_ch == "08" ]];then
		set_os "DragonFly"
	elif [[ $os_ch == "9" || $os_ch == "09" ]];then
		set_os  "Popos"
	elif [[ $os_ch == "10" ]];then
		set_os "Garuda"
	else
		echo -e "${r}[${w}!${r}] ${g} Invalid Option"
	fi



elif [[ $o_optn == "n" || $o_optn == "N" ]];then
	echo ""

else
	echo -e "${r}[${y}!${r}] ${pu} Invalid Option"

fi
#Now add figlet text-------------------------------
#Handle font options------
add_font(){
	cd $(pwd)
	cp -R font $HOME 
	cd $HOME 
	mv font ..
	cd ..
	mv font/* usr/share/figlet
	cd ~
	cd ..
	cd usr/etc
	
	echo -e "${w}[${y}+${w}] ${g} Enter text to show: "
	read name
	if [[ ${1} == "Bloody" ]];then
		echo -e "figlet -f Bloody ${name} | lolcat -a -d 3" >> bash.bashrc
		echo "date | lolcat" >> bash.bashrc
	elif [[ ${1} == "Standard" ]];then
		echo -e "figlet -f Standard ${name} | lolcat -a -d 3" >> bash.bashrc
		echo "date | lolcat " >> bash.bashrc
	elif [[ ${1} == "Slant" ]];then
		echo -e "figlet -f Slant ${name} | lolcat -a -d 3" >> bash.bashrc
		echo "date | lolcat" >> bash.bashrc
	elif [[ ${1} == "Digital" ]];then
		echo -e "figlet -f Digital ${name} | lolcat -a -d 3" >> bash.bashrc
		echo "date | lolcat" >> bash.bashrc
	else 
		echo -e "${r} Invalid option "
	fi
	cd ~
	cd T-BANNER #Return to folder---

}
#Make a function for add figlet text
f_text(){
	echo -e "${y} Fonts options "
	echo -e "\n"
	echo -e "${w}[${y}01${w}] ${r} Bloody"
	echo -e "${w}[${y}02${w}] ${r} Standard"
	echo -e "${w}[${y}03${w}] ${r} Slant"
	echo -e "${w}[${y}04${w}] ${r} Digital"
	echo -e "\n"
	echo -e "${y}[${r}~${y}] ${g} Choose option: "
	read ff_optn
	if [[ $ff_optn == "1" || $ff_optn == "01" ]];then
		add_font Bloody
	elif [[ $ff_optn == "2" || $ff_optn == "02" ]];then
		add_font Standard
	elif [[ $ff_optn == "3" || $ff_optn == "03" ]];then
		add_font Slant
	elif [[ $ff_optn == "4" || $ff_optn == "04" ]];then
		add_font Digital
	else
		echo -e "${r}[${g}!${r}] ${y} Invalid option"
	fi

}


#Ask user to add figlet text---
echo -ne "${r}[${y}×${r}] ${g} Press Y to add figlet text (default:N): "
read f_optn 

if [[ $f_optn == "y" || $f_optn == "Y" ]];then
	f_text
elif [[ $f_optn == "n" || $f_optn == "N" ]];then
	echo " "
else
	echo -e "${r} Invalid option"
fi
#Now setup The command prompt---

#Make a function to prompt
#Handle prompt 
add_p(){
	cd ~
	cd ..
	cd usr/etc
	prmp=$1
	echo -e "PS1='\e[33;1m ${prmp}\e[31;1m: \e[32;1m'" >> bash.bashrc

}

s_ppt(){
	echo -e "${g} Prompt options"
	echo -e "\n"
	echo -e "${r}[${w}01${r}] ${y} Name"
	echo -e "${r}[${w}02${r}] ${y} 🦄"
	echo -e "${r}[${w}03${r}] ${y} 💟"
	echo -e "${r}[${w}04${r}] ${y} 🐧"
	echo -e "${r}[${w}05${r}] ${y} ⭕"
	echo -e "\n"
	echo -ne "${w}[${r}~${w}] ${y} Select Any : "
	read p_optn 
	if [[ $p_optn == "1" || $p_optn == "01" ]];then
		echo -ne "${w}[${r}+{w}] ${g} Enter Name To Show :"
		read name
		add_p $name
	elif [[ $p_optn == "2" || $p_optn == "02" ]];then                 add_p "🦄"
	elif [[ $p_optn == "3" || $p_optn == "03" ]];then                 add_p "💟"
	elif [[ $p_optn == "4" || $p_optn == "04" ]];then                 add_p "🐧"
	elif [[ $p_optn == "5" || $p_optn == "05" ]];then                 add_p "⭕"
	else 
		echo -e "${r}[${g}!${r}] ${y} Invalid Option"
	fi
}
#Prompt function---++++++++
echo -ne "${r}[${y}×${r}] ${g} Press Y to customize your prompt(default:N): "
read p_optn
if [[ $p_optn == "y" || $p_optn == "Y" ]];then
	s_ppt

elif [[ $p_optn == "n" || $p_optn == "N" ]];then
	echo " "
else 
	echo -e "${r}[${g}!${r}] ${y} Invalid Option"
fi
#Now lets work for Background-------
#Make a funcrion for handle background function----
#Lets change the backgeound---------
b_ground(){
	cd $(pwd)
        cd ~
        cd T-BANNER  
	cp -R b_colors/$1 ~
	cd ~
        mkdir .termux 
	cp $1/* .termux
}
c_back(){
	cd $(pwd)
	#Make manue for background----
	echo -e "${g} Background options"
	echo " "
	echo -e "${r}[${w}01${r}] ${y} Darkblue"
	echo -e "${r}[${w}02${r}] ${y} Darkgreen"
	echo -e "${r}[${w}03${r}] ${y} Darkred"
	echo -e "${r}[${w}04${r}] ${y} Darkpurple"
	echo -e "${r}[${w}05${r}] ${y} Lightyellow"
	echo -e "\n"
	echo -ne "${w}[${r}~${w}] ${y} select any: "
	read bg_optn
	if [[ $bg_optn == "1" || $bg_optn == "01" ]];then
		b_ground d_blue
	elif [[ $bg_optn == "2" || $bg_optn == "03" ]];then
		b_ground d_green
	elif [[ $bg_optn == "3" || $bg_optn == "03" ]];then
		b_ground d_red
	elif [[ $bg_optn == "4" || $bg_optn == "04" ]];then
		b_ground d_purple
	elif [[ $bg_optn == "5" || $bg_optn == "05" ]];then
		b_ground l_yellow
	else
		echo -e "${r}[${w}!${r}] ${y} Invalid Option"
	fi


}

echo -ne "${r}[${y}×${r}] ${g} Press Y to customize your Background(default:N): "
read b_optn 
if [[ $b_optn == "y" || $b_optn == "Y" ]];then                  c_back
elif [[ $b_optn == "n" || $b_optn == "N" ]];then
	echo " "                                       
else                                                            echo -e "${r}[${g}!${r}] ${y} Invalid option"  
fi
#Let's add some additional feture to the termux-----
#Make a function adding aliases-----
als(){
	cd 
	cd ..
	cd usr/etc
	echo 'alias c="clear"' >> bash.bashrc
	echo 'alias e="exit"' >> bash.bashrc
	echo 'alias up="apt-get update"' >> bash.bashrc
}
#Alias function end here

t_property(){
	cd 
	cd .termux
	echo "shortcut.create-session = ctrl + t" >> termux.properties
	echo "bell-character = beep" >> termux.properties
}
#Let's Ask from user------
echo -ne "${r}[${g}+${r}] ${w} Press Y For Add Some Extra Fetures: "
read e_f
if [[ $e_f == "Y" || $e_f == "y" ]];then
	als
	t_property
elif [[ $e_f == "n" || $e_f == "N" ]];then
	echo " "
else
	echo -e "${r}[${y}!${r}] ${pu} Invalid Option"
fi
#Ask user to changr the Font style..
echo -ne "${r}[${g}+${r}] ${w} Press Y To Change The Font : "
read f_c
if [[ $f_c == "Y" || $f_c == "y" ]];then
	bash f_change.sh
elif [[ $f_c == "n" || $f_c == "N" ]];then                      echo " "
else                                                            echo -e "${r}[${y}!${r}] ${pu} Invalid option"
fi
echo -e "${r}-----------${g}Please restart Termux${r}---------"


