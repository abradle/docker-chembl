FROM informaticsmatters/rdkit
RUN apt-get update
RUN apt-get install -y libffi-dev python-imaging
ADD code /usr/local/code
RUN cd /usr/local/code && cd chembl_core_db &&  python setup.py install
RUN cd /usr/local/code && cd chembl_business_model &&  python setup.py install
RUN cd /usr/local/code && cd chembl_api &&  python setup.py install
