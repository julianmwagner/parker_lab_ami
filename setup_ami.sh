wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh;
bash ./miniconda.sh -b -p $HOME/miniconda;
export PATH="$HOME/miniconda/bin:$PATH";
echo 'export PATH="$HOME/miniconda/bin:$PATH"' >> ~/.bashrc;
source ~/.bashrc;
conda update -q -y conda;
conda install -y numpy cython pystan;
conda config --add channels conda-forge;
conda config --add channels defaults;
conda install -y scipy pandas numba scikit-image scikit-learn statsmodels bokeh altair holoviews watermark tqdm matplotlib seaborn ipython jupyter jupyterlab nodejs xarray netcdf4;
pip install arviz;
pip install altair-catplot;
pip install bebi103;
jupyter labextension install --no-build jupyterlab_bokeh;
jupyter labextension install --no-build @ijmbarr/jupyterlab_spellchecker;
jupyter labextension install --no-build @jupyter-widgets/jupyterlab-manager;
jupyter labextension install --no-build @pyviz/jupyterlab_pyviz;
jupyter lab build;
echo 'export PS1="\[\e[1;32m\]\u\[\e[0m\]@\e[1;36m\]\h\[\e[0m\] [\w]\n% "' >> ~/.bashrc;
echo 'export LSCOLORS="gxfxcxdxCxegedabagacad"' >> ~/.bashrc;

#Install R
sudo bash -c "echo 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/' >> /etc/apt/sources.list"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
sudo apt-get update
sudo apt-get install libopenblas-base r-base
sudo apt-get install r-base-dev
sudo apt-get install libcurl4-openssl-dev libssl-dev

#Kallisto
conda create -y -n kallisto_env
source activate kallisto_env
conda install -y -c bioconda kallisto
source deactivate
echo 'alias kallisto="$HOME/miniconda/envs/kallisto_env/bin/kallisto"' >> ~/.bashrc;

#MrBayes
sudo apt-get install mrbayes;
echo 'alias mb="/usr/bin/mb"' >> ~/.bashrc;

#BLAST
sudo apt-get install ncbi-blast+;

#Trinity and Trinotate
conda create -y -n trinity_env;
source activate trinity_env;
conda install -y -c bioconda trinity trinotate;
echo 'alias Trinity="$HOME/miniconda/envs/trinity_env/bin/Trinity"' >> ~/.bashrc;
echo 'alias Trinotate="$HOME/miniconda/envs/trinity_env/bin/Trinotate"' >> ~/.bashrc;

source ~/.bashrc;
