 ################## ~ By CoolSid Official ~  ###############################################################################################################################################################

Param(


[Parameter(Mandatory, HelpMessage = "Please provide a valid path")]
      [string]$first_path ,


[Parameter(Mandatory, HelpMessage = "Please provide a valid path")]
     [string]$second_path ,
[Parameter(Mandatory, HelpMessage = "Please provide a valid path")]
     [string]$third_path
     )
cls

 ################## ~ By CoolSid Official ~  ###############################################################################################################################################################


function run_it{
            Param([Parameter(Mandatory)]
            [string]$path )
            cd $path
            $folder_name=$path.split("\")[-1]   
            npm i
            write-host "Running the node on $folder_name"
            Start-Job -Name $folder_name -ScriptBlock { npm run dev }
}

run_it -path $first_path
run_it -path $second_path
run_it -path $third_path

#write-host "$first_path"
