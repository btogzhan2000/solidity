# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file LICENSE.rst or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "/Users/togzhan/Documents/Github/solidity/build/deps/src/jsoncpp-project")
  file(MAKE_DIRECTORY "/Users/togzhan/Documents/Github/solidity/build/deps/src/jsoncpp-project")
endif()
file(MAKE_DIRECTORY
  "/Users/togzhan/Documents/Github/solidity/build/deps/src/jsoncpp-project-build"
  "/Users/togzhan/Documents/Github/solidity/build/deps"
  "/Users/togzhan/Documents/Github/solidity/build/deps/tmp"
  "/Users/togzhan/Documents/Github/solidity/build/deps/src/jsoncpp-project-stamp"
  "/Users/togzhan/Documents/Github/solidity/deps/downloads"
  "/Users/togzhan/Documents/Github/solidity/build/deps/src/jsoncpp-project-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/togzhan/Documents/Github/solidity/build/deps/src/jsoncpp-project-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/togzhan/Documents/Github/solidity/build/deps/src/jsoncpp-project-stamp${cfgdir}") # cfgdir has leading slash
endif()
