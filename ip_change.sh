#!/bin/bash

:global currentIP;
 
:local newIP [/ip address get [find interface="ether1"] address];
 
:if ($newIP != $currentIP) do={
    :put "ip address $currentIP changed to $newIP";
    :set currentIP $newIP;
}
