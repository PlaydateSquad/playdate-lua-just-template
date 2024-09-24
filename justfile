set windows-shell := ["C:\\Program Files\\PowerShell\\7\\pwsh.exe", "-CommandWithArgs"]

# The product defines the package name.
product := "MyPlaydateGame"

# Gets the Playdate SDK path. Make sure this is set in your environment vars!
playdate_sdk := env_var('PLAYDATE_SDK_PATH')

CC := "pdc"

# Cleans the build folder and other generated files.
clean:
    rm -r build/{{product}}.pdx 

# Builds the product PDX file.
build:
    {{CC}} -I {{playdate_sdk}} Source build/{{product}}.pdx

# Stops the simulator and re-runs the product.
reload:
    # Change the below line to killall if on macOS or Linux.
    Stop-Process -Name PlaydateSimulator
    just run

# Builds the product and loads it into the simulator.
run: clean build
    PlaydateSimulator build/{{product}}.pdx
