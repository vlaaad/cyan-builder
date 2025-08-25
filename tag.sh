#!/bin/bash

# Infer version as the number of commits from the root
VERSION=v1.$(git rev-list --count HEAD)

echo "Tagging version $VERSION"
git tag "$VERSION" && git push origin "$VERSION"