package com.serenegiant.service;
/*
 * UVCCamera
 * library and sample to access to UVC web camera on non-rooted Android device
 * 
 * Copyright (c) 2014-2017 saki t_saki@serenegiant.com
 * 
 * File name: IUVCServiceCallback.aidl
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 * 
 *     http://www.apache.org/licenses/LICENSE-2.0
 * 
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 * 
 * All files in the folder are under this Apache License, Version 2.0.
 * Files in the jni/libjpeg, jni/libusb and jin/libuvc folder may have a different license, see the respective files.
*/

interface IUVCServiceCallback {
	oneway void onConnected();
	oneway void onDisConnected();
    oneway void onConnectionError();
    oneway void onStoppedRecording( int reason); // 0 - explicit, 1 - release, 2 - shutdown, 3 -low battery, 4 - low space
}