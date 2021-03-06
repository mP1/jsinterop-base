#!/usr/bin/env bash

set -e

BAZEL=${BAZEL:-bazel}

bazel_root="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

pushd "${bazel_root}"
${BAZEL} build //java/jsinterop/base:libbase.jar
${BAZEL} build //java/jsinterop/base:libbase-src.jar

popd

tmp_directory="$(mktemp -d)"
pushd "${tmp_directory}"

jar xf "${bazel_root}/bazel-bin/java/jsinterop/base/libbase.jar"
jar xf "${bazel_root}/bazel-bin/java/jsinterop/base/libbase-src.jar"

touch .walkingkooka-j2cl-maven-plugin-classpath-required.txt
touch .walkingkooka-j2cl-maven-plugin-javascript-source-required.txt
jar cf "${bazel_root}/maven/jsinterop-base.jar" .
#TODO also build source jar

popd

rm -rf "${tmp_directory}"