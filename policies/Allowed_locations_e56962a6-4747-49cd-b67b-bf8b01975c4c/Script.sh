#!/bin/sh

#echo $1

for i in $(echo $1 | sed "s/,/ /g")
do
    # call your procedure/other scripts here below
    echo "$i"
done

#az login --service-principal -u 0dca7096-661c-4a13-9c28-950abaf9849c -p waT8Q~Pwrm9eLUKNbjyTtdrriDut2ARfFw9PhbNa --tenant b704ff8d-1b26-40df-a618-c65903426cb3

#az extension add --name subscription

az config set extension.use_dynamic_install=yes_without_prompt

#az account list

az account subscription rename --subscription-id 4351c6a2-2e13-4946-b985-1cfe33473f21 --name MaximusSandBoxTest


az account management-group create --name MaximusMG

#az account management-group delete --name MaximusMG

az account management-group subscription add --name MaximusMG --subscription 4351c6a2-2e13-4946-b985-1cfe33473f21

#az role assignment create --assignee "767f35ce-2ea5-4f2c-88ac-cc5e5ee433d4" --role "Contributor" --subscription "4351c6a2-2e13-4946-b985-1cfe33473f21"
az role assignment create --assignee-object-id "767f35ce-2ea5-4f2c-88ac-cc5e5ee433d4" --assignee-principal-type "Group" --role "Contributor" --subscription "4351c6a2-2e13-4946-b985-1cfe33473f21"

#az logout
