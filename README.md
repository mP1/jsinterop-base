[![Build Status](https://travis-ci.com/mP1/jsinterop-base.svg?branch=master)](https://travis-ci.com/mP1/jsinterop-base.svg.svg?branch=master)
[![Coverage Status](https://coveralls.io/repos/github/mP1/jsinterop-base/badge.svg?branch=master)](https://coveralls.io/github/mP1/jsinterop-base?branch=master)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![Language grade: Java](https://img.shields.io/lgtm/grade/java/g/mP1/jsinterop-base.svg?logo=lgtm&logoWidth=18)](https://lgtm.com/projects/g/mP1/jsinterop-base/context:java)
[![Total alerts](https://img.shields.io/lgtm/alerts/g/mP1/jsinterop-base.svg?logo=lgtm&logoWidth=18)](https://lgtm.com/projects/g/mP1/jsinterop-base/alerts/)



j2cl project
============

A fork of [vertispan/jsinterop-base](http://github.com/vertispan/jsinterop-base.git) which is itself a fork of [google/jsinterop-base](http://github.com/google/jsinterop-base.git).
Additional modifications have been made in maven poms assigning groupId=walkingkooka and some minor artifactId changes
to a few selected maven sub modules.

For the complete README refer to the google github project.



# Usage

Include this project as a dependency.

```xml
git clone git://github.com/mP1/jsinterop-base.git
```



Install [bazel 2.2.0](https://docs.bazel.build/versions/2.2.0/install.html)

```bash
bazel clean
bazel build
```



Build maven artifacts from bazel output

```bash
./build_mvn_jar.sh
```


Maven deploy

```bash
cd maven
mvn clean deploy

```



# Contributions

Suggestions via the issue tracker, and pull requests are most welcomed.
