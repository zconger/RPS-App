from setuptools import setup, find_packages

with open("README.md", "r") as fh:
    long_description = fh.read()

setup(
    name="RPS-App", # Replace with your own username
    version="0.1.3",
    author="Andrew Way",
    author_email="andrew.way@armory.io",
    description="A simple Flask RPS app",
    long_description=long_description,
    long_description_content_type="text/markdown",
    url="https://github.com/away168/RPS-App",
    packages=find_packages(),
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
    ],
    python_requires='>=3.7',
    include_package_data=True,
    zip_safe=False,
    install_requires=[
        'Flask>=1.1.2',
        'Flask-Cors>=3.0.8'
    ]
)