from setuptools import setup, find_packages


with open(r"./requirements.txt", "r") as f:
    requirements = f.read().splitlines()
    requirements = [r for r in requirements if not r.startswith("#")]

setup(
    name="local_chatbot",
    version="0.1",
    packages=find_packages(),
    install_requires=requirements,
    author="Maxime Paquet",
    author_email="maxime.paquet.98@gmail.com",
    description="Simple chatbot running local",
    classifiers=[
        "Programming Language :: Python :: 3",
    ],
)
