import os
import shutil

out_dir = 'libc++_shared'
base_dir = '/opt/android/android-ndk-r21e/sources/cxx-stl/llvm-libc++/libs/'
abis = ['armeabi-v7a', 'arm64-v8a', 'x86', 'x86_64']
filename = 'libc++_shared.so'
for abi in abis:
    if not os.path.exists(os.path.join(out_dir, abi)):
        os.makedirs(os.path.join(out_dir, abi))
    shutil.copyfile(os.path.join(base_dir, abi, filename),
                    os.path.join(out_dir, abi, filename))
