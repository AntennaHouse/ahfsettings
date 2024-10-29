# Developing ahfsettings

## Requirements

- Apache Ant
- Trang

## Setup

- Clone this repository
- Create a `build.local.properties` file in the cloned repository and specify the correct value for `${trang.jar}` on your system

## Modifying the schema

- Make changes in `schema/axs.rnc`
- Run the `schema.translate` Ant target to update `axs.rng`, `axs.dtd`, and `axs.xsd` with your changes

## Modifying the Schematron

- Make changes in `schematron/axs.sch`
- When adding a Schematron Quick Fix (SQF), use an ID based on the context node's name
- SQF documentation: https://schematron-quickfix.com/quickFix/guide.html
