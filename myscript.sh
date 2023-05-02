#!/bin/bash

echo "-----------------------------------------------------------"
echo "Копирование прав доступа с одного файла и применения их к другому файлу."
echo "Скрипт написан Котовым Михаилом, студентом 719-1."
echo "-----------------------------------------------------------"

while :
do
#считывание имени 1 файла
while :
do
read -p "Введите имя файла для копирования прав доступа: " firstfilename
# проверка существования файла 1
if test -f "$firstfilename";
then echo "Файл успешно найден."; break;
else printf "%s: file not found: %s\n" >/dev/stderr ;
echo "Ошибка. Файл не был найден.";
echo "Хотите продолжить? (y/n)";
read answer;
if [ "$answer" == "y" ];
then continue;
else break 2; 
fi; fi
done


#считывание имени 2 файла
while :
do
read -p "Введите имя файла для применения прав доступа: " secondfilename
# проверка существования файла 2
if test -f "$secondfilename";
then echo "Файл успешно найден. Права доступа будут скопированы."; break;
else printf "%s: file not found: %s\n" >/dev/stderr ;
echo "Ошибка. Файл не был найден.";
echo "Хотите продолжить? (y/n)";
read answer;
if [ "$answer" == "y" ];
then continue;
else break 2;
fi; fi
done

# копирование прав доступа
chmod --reference=$firstfilename $secondfilename
echo "Программа успешно выполнилась. Права доступа скопированы и применены."
echo "Хотите повторить? (y/n)"
read answer;
if [ "$answer" == "y" ];
then continue;
else break;
fi

done




