from setuptools import setup, find_packages

setup(
    name='RPS-App',
    version='0.1.2',
    long_description=__doc__,
    packages=find_packages(),
    include_package_data=True,
    zip_safe=False,
    install_requires=[
        'Flask>=1.1.2',
        'Flask-Cors>=3.0.8'
    ]
)