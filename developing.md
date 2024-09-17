# Developing ahfsettings

## Requirements

- Apache Ant
- Trang

## Setup

- Clone this repository
- Create a `build.local.properties` file in the cloned repository and specify the correct value for `${trang.jar}` on your system

## Modifying the schema

- Make changes in `axs.rnc`
- Run the `schema.translate` Ant target to update `axs.rng`, `axs.dtd`, and `axs.xsd` with your changes
