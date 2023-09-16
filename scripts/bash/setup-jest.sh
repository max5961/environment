#!/bin/bash

mkdir src/__tests__
npm install --save-dev jest babel-jest @babel/core @babel/preset-env 

echo "Use with TypeScript? [y/n]"
read answer
if [ "$answer" = "" ] || [ "$answer" = 'y' ] || [ "$answer" = 'Y' ]; then
    npm install --save-dev @babel/preset-typescript @types/jest
    echo ""
    echo "In order to run Jest with TypeScript:"
    echo "      add "@babel/preset-typescript" to "presets" in .babelrc"
    echo "      Example:"
    echo "      {
                "presets": [
                    "@babel/preset-env",
                    "@babel/preset-typescript"
                ]
            }
    "
fi
