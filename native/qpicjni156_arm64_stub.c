#include <jni.h>

/*
 * The upstream arm64-v8a library contains compatibility stubs rather than the
 * original 32-bit QuickPic implementation. Keep those semantics, but build
 * them with a current NDK so Android 16 does not load the legacy static C++
 * runtime that was bundled solely to allocate the scanner's dummy handle.
 */

#define UNUSED(value) ((void)(value))

JNIEXPORT jint JNICALL
Java_com_alensw_jni_JniUtils_init(JNIEnv *env, jclass type, jstring path) {
    UNUSED(env);
    UNUSED(type);
    UNUSED(path);
    return 0;
}

JNIEXPORT void JNICALL
Java_com_alensw_jni_JniUtils_exifClose(JNIEnv *env, jclass type, jint handle) {
    UNUSED(env);
    UNUSED(type);
    UNUSED(handle);
}

JNIEXPORT jdoubleArray JNICALL
Java_com_alensw_jni_JniUtils_exifGet3RealValue(
        JNIEnv *env, jclass type, jint handle, jint tag, jboolean raw) {
    UNUSED(env);
    UNUSED(type);
    UNUSED(handle);
    UNUSED(tag);
    UNUSED(raw);
    return NULL;
}

JNIEXPORT jint JNICALL
Java_com_alensw_jni_JniUtils_exifGetInfo(
        JNIEnv *env, jclass type, jint handle, jint tag) {
    UNUSED(env);
    UNUSED(type);
    UNUSED(handle);
    UNUSED(tag);
    return 0;
}

JNIEXPORT jbyteArray JNICALL
Java_com_alensw_jni_JniUtils_exifGetThumbnail(
        JNIEnv *env, jclass type, jint handle) {
    UNUSED(env);
    UNUSED(type);
    UNUSED(handle);
    return NULL;
}

JNIEXPORT jobject JNICALL
Java_com_alensw_jni_JniUtils_exifGetValue(
        JNIEnv *env, jclass type, jint handle, jint tag, jboolean raw) {
    UNUSED(env);
    UNUSED(type);
    UNUSED(handle);
    UNUSED(tag);
    UNUSED(raw);
    return NULL;
}

JNIEXPORT jint JNICALL
Java_com_alensw_jni_JniUtils_exifOpenFD(
        JNIEnv *env, jclass type, jint fd, jboolean close_fd) {
    UNUSED(env);
    UNUSED(type);
    UNUSED(fd);
    UNUSED(close_fd);
    return 0;
}

JNIEXPORT jboolean JNICALL
Java_com_alensw_jni_JniUtils_exifSaveTo(
        JNIEnv *env, jclass type, jint handle, jint fd) {
    UNUSED(env);
    UNUSED(type);
    UNUSED(handle);
    UNUSED(fd);
    return JNI_FALSE;
}

JNIEXPORT jboolean JNICALL
Java_com_alensw_jni_JniUtils_exifSetDegrees(
        JNIEnv *env, jclass type, jint handle, jint degrees) {
    UNUSED(env);
    UNUSED(type);
    UNUSED(handle);
    UNUSED(degrees);
    return JNI_FALSE;
}

JNIEXPORT void JNICALL
Java_com_alensw_jni_JniUtils_fsCancelScan(
        JNIEnv *env, jclass type, jint handle, jboolean cancel) {
    UNUSED(env);
    UNUSED(type);
    UNUSED(handle);
    UNUSED(cancel);
}

JNIEXPORT jint JNICALL
Java_com_alensw_jni_JniUtils_fsCreateScanner(
        JNIEnv *env, jclass type, jobject callback) {
    UNUSED(env);
    UNUSED(type);
    UNUSED(callback);
    return 1;
}

JNIEXPORT void JNICALL
Java_com_alensw_jni_JniUtils_fsDestroyScanner(
        JNIEnv *env, jclass type, jint handle) {
    UNUSED(env);
    UNUSED(type);
    UNUSED(handle);
}

JNIEXPORT void JNICALL
Java_com_alensw_jni_JniUtils_fsInitExtensions(
        JNIEnv *env, jclass type, jint handle, jstring extensions) {
    UNUSED(env);
    UNUSED(type);
    UNUSED(handle);
    UNUSED(extensions);
}

JNIEXPORT jint JNICALL
Java_com_alensw_jni_JniUtils_fsScanFolders(
        JNIEnv *env, jclass type, jint handle, jobject target, jint flags) {
    UNUSED(env);
    UNUSED(type);
    UNUSED(handle);
    UNUSED(target);
    UNUSED(flags);
    return 0;
}

JNIEXPORT jint JNICALL
Java_com_alensw_jni_JniUtils_fsScanPictures(
        JNIEnv *env, jclass type, jint handle, jobject target, jint flags) {
    UNUSED(env);
    UNUSED(type);
    UNUSED(handle);
    UNUSED(target);
    UNUSED(flags);
    return 0;
}

JNIEXPORT jboolean JNICALL
Java_com_alensw_jni_JniUtils_fuCopyFD(
        JNIEnv *env, jclass type, jint source_fd, jint destination_fd) {
    UNUSED(env);
    UNUSED(type);
    UNUSED(source_fd);
    UNUSED(destination_fd);
    return JNI_FALSE;
}

JNIEXPORT jlong JNICALL
Java_com_alensw_jni_JniUtils_fuGetAvailBytes(
        JNIEnv *env, jclass type, jstring path) {
    UNUSED(env);
    UNUSED(type);
    UNUSED(path);
    return 0;
}

JNIEXPORT jlong JNICALL
Java_com_alensw_jni_JniUtils_fuGetFileSize(
        JNIEnv *env, jclass type, jstring path) {
    UNUSED(env);
    UNUSED(type);
    UNUSED(path);
    return 0;
}

JNIEXPORT jint JNICALL
Java_com_alensw_jni_JniUtils_fuGetFileTime(
        JNIEnv *env, jclass type, jstring path) {
    UNUSED(env);
    UNUSED(type);
    UNUSED(path);
    return 0;
}

JNIEXPORT jboolean JNICALL
Java_com_alensw_jni_JniUtils_fuHasNoMedia(
        JNIEnv *env, jclass type, jstring path) {
    UNUSED(env);
    UNUSED(type);
    UNUSED(path);
    return JNI_FALSE;
}

JNIEXPORT jint JNICALL
Java_com_alensw_jni_JniUtils_gifAllocBuffer(
        JNIEnv *env, jclass type, jint size) {
    UNUSED(env);
    UNUSED(type);
    UNUSED(size);
    return 0;
}

JNIEXPORT void JNICALL
Java_com_alensw_jni_JniUtils_gifClose(
        JNIEnv *env, jclass type, jint handle) {
    UNUSED(env);
    UNUSED(type);
    UNUSED(handle);
}

JNIEXPORT jint JNICALL
Java_com_alensw_jni_JniUtils_gifDecodeFrame(
        JNIEnv *env, jclass type, jint handle, jint frame, jint buffer) {
    UNUSED(env);
    UNUSED(type);
    UNUSED(handle);
    UNUSED(frame);
    UNUSED(buffer);
    return 0;
}

JNIEXPORT jboolean JNICALL
Java_com_alensw_jni_JniUtils_gifDrawFrame(
        JNIEnv *env, jclass type, jint handle, jint frame, jint buffer,
        jobject bitmap) {
    UNUSED(env);
    UNUSED(type);
    UNUSED(handle);
    UNUSED(frame);
    UNUSED(buffer);
    UNUSED(bitmap);
    return JNI_FALSE;
}

JNIEXPORT jboolean JNICALL
Java_com_alensw_jni_JniUtils_gifDrawFrame2(
        JNIEnv *env, jclass type, jint handle, jint frame, jint buffer,
        jintArray pixels, jint stride) {
    UNUSED(env);
    UNUSED(type);
    UNUSED(handle);
    UNUSED(frame);
    UNUSED(buffer);
    UNUSED(pixels);
    UNUSED(stride);
    return JNI_FALSE;
}

JNIEXPORT void JNICALL
Java_com_alensw_jni_JniUtils_gifFreeBuffer(
        JNIEnv *env, jclass type, jint buffer) {
    UNUSED(env);
    UNUSED(type);
    UNUSED(buffer);
}

JNIEXPORT jint JNICALL
Java_com_alensw_jni_JniUtils_gifGetDuration(
        JNIEnv *env, jclass type, jint handle) {
    UNUSED(env);
    UNUSED(type);
    UNUSED(handle);
    return 0;
}

JNIEXPORT jint JNICALL
Java_com_alensw_jni_JniUtils_gifGetFrameCount(
        JNIEnv *env, jclass type, jint handle) {
    UNUSED(env);
    UNUSED(type);
    UNUSED(handle);
    return 0;
}

JNIEXPORT jint JNICALL
Java_com_alensw_jni_JniUtils_gifGetImageHeight(
        JNIEnv *env, jclass type, jint handle) {
    UNUSED(env);
    UNUSED(type);
    UNUSED(handle);
    return 0;
}

JNIEXPORT jint JNICALL
Java_com_alensw_jni_JniUtils_gifGetImageWidth(
        JNIEnv *env, jclass type, jint handle) {
    UNUSED(env);
    UNUSED(type);
    UNUSED(handle);
    return 0;
}

JNIEXPORT jint JNICALL
Java_com_alensw_jni_JniUtils_gifOpenFD(
        JNIEnv *env, jclass type, jint fd, jboolean close_fd) {
    UNUSED(env);
    UNUSED(type);
    UNUSED(fd);
    UNUSED(close_fd);
    return 0;
}

JNIEXPORT void JNICALL
Java_com_alensw_jni_JniUtils_gifSetBkColor(
        JNIEnv *env, jclass type, jint handle, jint color) {
    UNUSED(env);
    UNUSED(type);
    UNUSED(handle);
    UNUSED(color);
}
