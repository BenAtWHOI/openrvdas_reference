

OpenRVDASPath=/opt/openrvdas
ProjectDir=/home/befo/Desktop/WHOI/underway/underway_rvdas/tmp/paul

source $OpenRVDASPath/venv/bin/activate

python $OpenRVDASPath/logger/utils/simulate_data.py --config $ProjectDir/data_sim_config.yaml &