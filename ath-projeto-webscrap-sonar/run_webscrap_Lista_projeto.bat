@echo off
Color 0E
cls
title BANCO DO BRASIL         -        GEINT       -       WEBSCRAP           -         SONAR
echo Computador: %computername%        Usuario: %username%
Echo.
Echo.
cucumber -t @webScraper_lista
