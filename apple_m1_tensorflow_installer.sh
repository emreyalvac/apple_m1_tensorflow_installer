echo "Enter conda env name"
read env_name

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh -O ~/miniconda.sh &&
bash ~/miniconda.sh -b -p $HOME/miniconda &&
wget https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-MacOSX-arm64.sh -O ~/mambaforge.sh &&
bash ~/mambaforge.sh &&
conda env create --name ${emv_name} &&
conda activate ${env_name} &&
pip install --upgrade --force --no-dependencies https://github.com/apple/tensorflow_macos/releases/download/v0.1alpha3/tensorflow_addons_macos-0.1a3-cp38-cp38-macosx_11_0_arm64.whl https://github.com/apple/tensorflow_macos/releases/download/v0.1alpha3/tensorflow_macos-0.1a3-cp38-cp38-macosx_11_0_arm64.whl &&
conda install -c conda-forge tensorflow-macos tensorflow &&
echo "Done"