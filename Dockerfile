FROM informaticsmatters/rdkit
RUN apt-get update
RUN apt-get install -y libffi-dev python-imaging
RUN pip install chembl_webresource_client
