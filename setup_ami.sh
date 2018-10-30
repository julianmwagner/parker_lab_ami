sudo yum -y update;
sudo yum -y install git;
sudo yum -y groupinstall "Development Tools";
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh;
bash ./miniconda.sh -b -p $HOME/miniconda;
export PATH="$HOME/miniconda/bin:$PATH";
echo 'export PATH="$HOME/miniconda/bin:$PATH"' >> ~/.bashrc;
source ~/.bashrc;
conda update -q -y conda;
conda install -y numpy cython pystan;
conda config --add channels conda-forge;
conda config --add channels defaults;
conda config --add channels bioconda
conda install -y scipy pandas numba scikit-image scikit-learn statsmodels bokeh altair holoviews watermark tqdm matplotlib seaborn ipython jupyter jupyterlab nodejs xarray netcdf4;
conda install trinity trinotate
conda install -c r r-essentials mro-base
conda install -r-sleuth
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
