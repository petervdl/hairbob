.class public Lcom/airbnb/android/utils/ExternalStorageHelper;
.super Ljava/lang/Object;
.source "ExternalStorageHelper.java"


# static fields
.field static sSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/airbnb/android/utils/ExternalStorageHelper;->sSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static UrlToFilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "urlString"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x5f

    .line 21
    if-nez p0, :cond_6

    .line 22
    const/4 v0, 0x0

    .line 23
    :goto_5
    return-object v0

    :cond_6
    const/16 v0, 0x2f

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public static getCacheDir(Landroid/content/Context;)Ljava/io/File;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-static {}, Lcom/airbnb/android/utils/ExternalStorageHelper;->isExternalStorageMounted()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Lcom/airbnb/android/utils/ExternalStorageHelper;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-static {p0}, Lcom/airbnb/android/utils/ExternalStorageHelper;->getCacheDirByContext(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    goto :goto_a
.end method

.method private static getCacheDirByContext(Landroid/content/Context;)Ljava/io/File;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    sget-object v1, Lcom/airbnb/android/utils/ExternalStorageHelper;->sSync:Ljava/lang/Object;

    monitor-enter v1

    .line 65
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 66
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method private static getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    sget-object v1, Lcom/airbnb/android/utils/ExternalStorageHelper;->sSync:Ljava/lang/Object;

    monitor-enter v1

    .line 57
    :try_start_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v0, v2, :cond_f

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    :goto_d
    monitor-exit v1

    return-object v0

    :cond_f
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    goto :goto_d

    .line 60
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public static getFilenameFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "urlString"    # Ljava/lang/String;

    .prologue
    .line 14
    if-nez p0, :cond_4

    .line 15
    const/4 p0, 0x0

    .line 17
    .end local p0    # "urlString":Ljava/lang/String;
    .local v0, "index":I
    :cond_3
    :goto_3
    return-object p0

    .line 16
    .end local v0    # "index":I
    .restart local p0    # "urlString":Ljava/lang/String;
    :cond_4
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 17
    .restart local v0    # "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3
.end method

.method private static isExternalStorageMounted()Z
    .registers 2

    .prologue
    .line 48
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static openDirectory(Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .param p0, "dirname"    # Ljava/lang/String;

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, "f":Ljava/io/File;
    invoke-static {}, Lcom/airbnb/android/utils/ExternalStorageHelper;->isExternalStorageMounted()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 38
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 39
    .local v1, "storageDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    .end local v0    # "f":Ljava/io/File;
    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    .restart local v0    # "f":Ljava/io/File;
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 41
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 44
    .end local v1    # "storageDir":Ljava/io/File;
    :cond_1b
    return-object v0
.end method

.method public static openFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .param p0, "dirname"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 27
    const/4 v1, 0x0

    .line 28
    .local v1, "f":Ljava/io/File;
    invoke-static {p0}, Lcom/airbnb/android/utils/ExternalStorageHelper;->openDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 29
    .local v0, "dir":Ljava/io/File;
    if-eqz v0, :cond_c

    .line 30
    new-instance v1, Ljava/io/File;

    .end local v1    # "f":Ljava/io/File;
    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 32
    .restart local v1    # "f":Ljava/io/File;
    :cond_c
    return-object v1
.end method
