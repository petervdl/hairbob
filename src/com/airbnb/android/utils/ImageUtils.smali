.class public Lcom/airbnb/android/utils/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# static fields
.field private static final UPLOAD_COMPRESS_QUALITY:I = 0x50


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compressBitmapForUpload(Landroid/graphics/Bitmap;I)Ljava/lang/String;
    .registers 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "rotationDegrees"    # I

    .prologue
    .line 168
    if-eqz p0, :cond_56

    .line 172
    :try_start_2
    invoke-static {p0, p1}, Lcom/airbnb/android/utils/ImageUtils;->rotateIfNeeded(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "upload"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ".jpg"

    invoke-static {v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 175
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 176
    .local v2, "out":Ljava/io/FileOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x50

    invoke-virtual {p0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 178
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_34} :catch_58
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_34} :catch_36

    move-result-object v3

    .line 186
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    :goto_35
    return-object v3

    .line 181
    :catch_36
    move-exception v0

    .line 182
    .local v0, "error":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v3, "android_eng"

    const/4 v4, 0x1

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v5

    const-string/jumbo v6, "oom_crash_caught"

    const-string/jumbo v7, "true"

    invoke-virtual {v5, v6, v7}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v5

    const-string/jumbo v6, "action"

    const-string/jumbo v7, "compress_image_bitmap_for_upload"

    invoke-virtual {v5, v6, v7}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 186
    .end local v0    # "error":Ljava/lang/OutOfMemoryError;
    :cond_56
    :goto_56
    const/4 v3, 0x0

    goto :goto_35

    .line 180
    :catch_58
    move-exception v3

    goto :goto_56
.end method

.method public static compressBitmapForUpload(Ljava/lang/String;I)Ljava/lang/String;
    .registers 14
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "maxImageSize"    # I

    .prologue
    const/4 v6, 0x0

    .line 137
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 164
    :goto_7
    return-object v6

    .line 141
    :cond_8
    invoke-static {p0, p1, p1}, Lcom/airbnb/android/utils/ImageUtils;->scaleBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 142
    .local v5, "uploadBitmap":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_6e

    .line 144
    :try_start_e
    invoke-static {p0}, Lcom/airbnb/android/utils/ImageUtils;->getExifOrientation(Ljava/lang/String;)I

    move-result v4

    .line 146
    .local v4, "rotationDegrees":I
    invoke-static {v5, v4}, Lcom/airbnb/android/utils/ImageUtils;->rotateIfNeeded(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 148
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "upload"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ".jpg"

    invoke-static {v7, v8}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 149
    .local v2, "file":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 150
    .local v3, "out":Ljava/io/FileOutputStream;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x50

    invoke-virtual {v5, v7, v8, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_41} :catch_46
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_41} :catch_4d

    .line 164
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .end local v4    # "rotationDegrees":I
    :goto_41
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    .line 152
    .end local v2    # "file":Ljava/io/File;
    :catch_46
    move-exception v0

    .line 154
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    .restart local v2    # "file":Ljava/io/File;
    goto :goto_41

    .line 155
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "file":Ljava/io/File;
    :catch_4d
    move-exception v1

    .line 156
    .local v1, "error":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v7, "android_eng"

    const/4 v8, 0x1

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v9

    const-string/jumbo v10, "oom_crash_caught"

    const-string/jumbo v11, "true"

    invoke-virtual {v9, v10, v11}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v9

    const-string/jumbo v10, "action"

    const-string/jumbo v11, "compress_image_file_for_upload"

    invoke-virtual {v9, v10, v11}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    goto :goto_7

    .line 161
    .end local v1    # "error":Ljava/lang/OutOfMemoryError;
    :cond_6e
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v2    # "file":Ljava/io/File;
    goto :goto_41
.end method

.method public static createCircularBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "size"    # I

    .prologue
    const/4 v7, 0x0

    .line 251
    int-to-float v4, p1

    const/high16 v5, 0x40000000

    div-float v3, v4, v5

    .line 253
    .local v3, "radius":F
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 254
    .local v1, "circleBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 257
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 258
    .local v2, "path":Landroid/graphics/Path;
    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v3, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 259
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 260
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v7, v7, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v6, 0x0

    invoke-virtual {v0, p0, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 264
    return-object v1
.end method

.method public static getBitmapForUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 78
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 79
    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_c} :catch_13
    .catchall {:try_start_1 .. :try_end_c} :catchall_1b

    move-result-object v1

    .line 84
    if-eqz v0, :cond_12

    .line 85
    :try_start_f
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_22

    .line 92
    :cond_12
    :goto_12
    return-object v1

    .line 80
    :catch_13
    move-exception v1

    .line 84
    if-eqz v0, :cond_19

    .line 85
    :try_start_16
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_24

    .line 92
    :cond_19
    :goto_19
    const/4 v1, 0x0

    goto :goto_12

    .line 83
    :catchall_1b
    move-exception v1

    .line 84
    if-eqz v0, :cond_21

    .line 85
    :try_start_1e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_26

    .line 89
    :cond_21
    :goto_21
    throw v1

    .line 87
    :catch_22
    move-exception v2

    goto :goto_12

    :catch_24
    move-exception v1

    goto :goto_19

    :catch_26
    move-exception v2

    goto :goto_21
.end method

.method public static getExifOrientation(Ljava/lang/String;)I
    .registers 6
    .param p0, "filepath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 31
    const/4 v0, 0x0

    .line 32
    .local v0, "degree":I
    if-eqz p0, :cond_17

    .line 33
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 34
    .local v1, "exif":Landroid/media/ExifInterface;
    if-eqz v1, :cond_17

    .line 35
    const-string/jumbo v3, "Orientation"

    invoke-virtual {v1, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    .line 37
    .local v2, "orientation":I
    if-eq v2, v4, :cond_17

    .line 39
    packed-switch v2, :pswitch_data_22

    .line 54
    .end local v1    # "exif":Landroid/media/ExifInterface;
    .end local v2    # "orientation":I
    :cond_17
    :goto_17
    :pswitch_17
    return v0

    .line 41
    .restart local v1    # "exif":Landroid/media/ExifInterface;
    .restart local v2    # "orientation":I
    :pswitch_18
    const/16 v0, 0x5a

    .line 42
    goto :goto_17

    .line 44
    :pswitch_1b
    const/16 v0, 0xb4

    .line 45
    goto :goto_17

    .line 47
    :pswitch_1e
    const/16 v0, 0x10e

    goto :goto_17

    .line 39
    nop

    :pswitch_data_22
    .packed-switch 0x3
        :pswitch_1b
        :pswitch_17
        :pswitch_17
        :pswitch_18
        :pswitch_17
        :pswitch_1e
    .end packed-switch
.end method

.method public static getFilePathForUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 96
    const/4 v4, 0x0

    .line 97
    .local v4, "inputStream":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 99
    .local v6, "outputStream":Ljava/io/OutputStream;
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 100
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v5

    .line 101
    .local v5, "mime":Landroid/webkit/MimeTypeMap;
    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 103
    .local v8, "type":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 104
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "upload"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_47

    const-string/jumbo v8, "jpg"

    .end local v8    # "type":Ljava/lang/String;
    :cond_47
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 105
    .local v3, "file":Ljava/io/File;
    new-instance v7, Ljava/io/BufferedOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5d
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_5d} :catch_b2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5d} :catch_8e
    .catchall {:try_start_2 .. :try_end_5d} :catchall_9c

    .line 107
    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .local v7, "outputStream":Ljava/io/OutputStream;
    const/16 v9, 0x400

    :try_start_5f
    new-array v0, v9, [B

    .line 110
    .local v0, "buffer":[B
    :goto_61
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    const/4 v9, -0x1

    if-eq v1, v9, :cond_7b

    .line 111
    const/4 v9, 0x0

    invoke-virtual {v7, v0, v9, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_6c
    .catch Ljava/io/FileNotFoundException; {:try_start_5f .. :try_end_6c} :catch_6d
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_6c} :catch_ad
    .catchall {:try_start_5f .. :try_end_6c} :catchall_aa

    goto :goto_61

    .line 117
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    :catch_6d
    move-exception v9

    move-object v6, v7

    .line 121
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "mime":Landroid/webkit/MimeTypeMap;
    .end local v7    # "outputStream":Ljava/io/OutputStream;
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    :goto_6f
    if-eqz v4, :cond_74

    .line 122
    :try_start_71
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 125
    :cond_74
    if-eqz v6, :cond_79

    .line 126
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_79} :catch_b0

    .line 133
    :cond_79
    :goto_79
    const/4 v9, 0x0

    :goto_7a
    return-object v9

    .line 114
    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v2    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "mime":Landroid/webkit/MimeTypeMap;
    .restart local v7    # "outputStream":Ljava/io/OutputStream;
    :cond_7b
    :try_start_7b
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 116
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_81
    .catch Ljava/io/FileNotFoundException; {:try_start_7b .. :try_end_81} :catch_6d
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_81} :catch_ad
    .catchall {:try_start_7b .. :try_end_81} :catchall_aa

    move-result-object v9

    .line 121
    if-eqz v4, :cond_87

    .line 122
    :try_start_84
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 125
    :cond_87
    if-eqz v7, :cond_8c

    .line 126
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_8c} :catch_b4

    :cond_8c
    :goto_8c
    move-object v6, v7

    .line 130
    .end local v7    # "outputStream":Ljava/io/OutputStream;
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    goto :goto_7a

    .line 118
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "mime":Landroid/webkit/MimeTypeMap;
    :catch_8e
    move-exception v9

    .line 121
    :goto_8f
    if-eqz v4, :cond_94

    .line 122
    :try_start_91
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 125
    :cond_94
    if-eqz v6, :cond_79

    .line 126
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_99} :catch_9a

    goto :goto_79

    .line 128
    :catch_9a
    move-exception v9

    goto :goto_79

    .line 120
    :catchall_9c
    move-exception v9

    .line 121
    :goto_9d
    if-eqz v4, :cond_a2

    .line 122
    :try_start_9f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 125
    :cond_a2
    if-eqz v6, :cond_a7

    .line 126
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a7} :catch_a8

    .line 130
    :cond_a7
    :goto_a7
    throw v9

    .line 128
    :catch_a8
    move-exception v10

    goto :goto_a7

    .line 120
    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "mime":Landroid/webkit/MimeTypeMap;
    .restart local v7    # "outputStream":Ljava/io/OutputStream;
    :catchall_aa
    move-exception v9

    move-object v6, v7

    .end local v7    # "outputStream":Ljava/io/OutputStream;
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    goto :goto_9d

    .line 118
    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .restart local v7    # "outputStream":Ljava/io/OutputStream;
    :catch_ad
    move-exception v9

    move-object v6, v7

    .end local v7    # "outputStream":Ljava/io/OutputStream;
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    goto :goto_8f

    .line 128
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "mime":Landroid/webkit/MimeTypeMap;
    :catch_b0
    move-exception v9

    goto :goto_79

    .line 117
    :catch_b2
    move-exception v9

    goto :goto_6f

    .line 128
    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v2    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "mime":Landroid/webkit/MimeTypeMap;
    .restart local v7    # "outputStream":Ljava/io/OutputStream;
    :catch_b4
    move-exception v10

    goto :goto_8c
.end method

.method public static getInSampleSize(IIIIZ)I
    .registers 12
    .param p0, "srcWidth"    # I
    .param p1, "srcHeight"    # I
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I
    .param p4, "roundUp"    # Z

    .prologue
    const/4 v3, 0x1

    .line 226
    if-gt p0, p2, :cond_5

    if-le p1, p3, :cond_2d

    .line 227
    :cond_5
    int-to-float v5, p0

    int-to-float v6, p2

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v4, v5

    .line 228
    .local v4, "widthRatio":I
    int-to-float v5, p1

    int-to-float v6, p3

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v0, v5

    .line 230
    .local v0, "heightRatio":I
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 233
    .local v2, "maxRatio":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    const/16 v5, 0x20

    if-ge v1, v5, :cond_2d

    .line 234
    shr-int v5, v2, v1

    if-nez v5, :cond_2e

    .line 235
    add-int/lit8 v5, v1, -0x1

    shl-int/2addr v3, v5

    .line 236
    .local v3, "pow2":I
    if-eqz p4, :cond_2d

    if-le v2, v3, :cond_2d

    .line 237
    shl-int/lit8 v3, v3, 0x1

    .line 246
    .end local v0    # "heightRatio":I
    .end local v1    # "i":I
    .end local v2    # "maxRatio":I
    .end local v3    # "pow2":I
    .end local v4    # "widthRatio":I
    :cond_2d
    return v3

    .line 233
    .restart local v0    # "heightRatio":I
    .restart local v1    # "i":I
    .restart local v2    # "maxRatio":I
    .restart local v4    # "widthRatio":I
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c
.end method

.method public static rotateIfNeeded(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "degrees"    # I

    .prologue
    const/4 v1, 0x0

    const/high16 v4, 0x40000000

    .line 59
    if-eqz p1, :cond_31

    if-eqz p0, :cond_31

    .line 60
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 61
    .local v5, "m":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v5, v0, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 64
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 66
    .local v7, "b2":Landroid/graphics/Bitmap;
    if-eq v7, p0, :cond_30

    .line 67
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 71
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v7    # "b2":Landroid/graphics/Bitmap;
    :cond_30
    :goto_30
    return-object v7

    :cond_31
    move-object v7, p0

    goto :goto_30
.end method

.method public static scaleBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 8
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .prologue
    const/4 v4, 0x1

    .line 190
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 191
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 192
    invoke-static {p0, v1}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 194
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 195
    .local v3, "srcWidth":I
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 197
    .local v2, "srcHeight":I
    invoke-static {v3, v2, p1, p2, v4}, Lcom/airbnb/android/utils/ImageUtils;->getInSampleSize(IIIIZ)I

    move-result v4

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 199
    const/4 v4, 0x0

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 201
    :try_start_18
    invoke-static {p0, v1}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_18 .. :try_end_1b} :catch_1d

    move-result-object v4

    .line 203
    :goto_1c
    return-object v4

    .line 202
    :catch_1d
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const/4 v4, 0x0

    goto :goto_1c
.end method
