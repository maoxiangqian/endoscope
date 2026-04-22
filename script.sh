#!/bin/bash
# 使用 Conan 生成的 CMakePresets 自动处理所有路径
cmake --preset conan-release
cmake --build --preset conan-release
