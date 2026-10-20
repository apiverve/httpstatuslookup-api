from setuptools import setup, find_packages

setup(
    name='apiverve_httpstatuscodelookup',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='HTTP Status Code Lookup decodes any HTTP status code by returning its standard name and detailed description. Provide a numeric code to inspect its meaning and response behavior across standard ranges.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/httpstatuslookup?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
