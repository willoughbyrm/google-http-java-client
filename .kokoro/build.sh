#!/bin/bash
# Copyright 2018 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

set -eo pipefail

cd github/google-http-java-client/

# Print out Java
java -version
echo $JOB_TYPE

export MAVEN_OPTS="-Xmx1024m -XX:MaxPermSize=128m"

mvn install -DskipTests=true -Dmaven.javadoc.skip=true -B -V
mvn test -B