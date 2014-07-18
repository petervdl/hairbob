.class public Lcom/airbnb/android/utils/CrashUtils;
.super Ljava/lang/Object;
.source "CrashUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static saveCrashes()V
    .registers 8

    .prologue
    .line 23
    :try_start_0
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/android/AirbnbApplication;->getFilesDir()Ljava/io/File;

    move-result-object v5

    new-instance v6, Lcom/airbnb/android/utils/CrashUtils$1;

    invoke-direct {v6}, Lcom/airbnb/android/utils/CrashUtils$1;-><init>()V

    invoke-virtual {v5, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 31
    .local v2, "stackTraces":[Ljava/io/File;
    if-eqz v2, :cond_a5

    array-length v5, v2

    if-lez v5, :cond_a5

    .line 33
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    const/4 v7, 0x0

    aget-object v7, v2, v7

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 34
    .local v1, "reader":Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .local v4, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 37
    .local v3, "startRecording":Z
    :cond_2e
    :goto_2e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_a6

    .line 38
    if-nez v3, :cond_49

    const-string/jumbo v5, "Error"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_48

    const-string/jumbo v5, "Exception"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 39
    :cond_48
    const/4 v3, 0x1

    .line 42
    :cond_49
    if-eqz v3, :cond_2e

    .line 43
    const-string/jumbo v5, "com.airbnb.android"

    const-string/jumbo v6, "**"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 44
    const-string/jumbo v5, "android.os."

    const-string/jumbo v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 45
    const-string/jumbo v5, "android.app."

    const-string/jumbo v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 46
    const-string/jumbo v5, "android.support.v4."

    const-string/jumbo v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 47
    const-string/jumbo v5, "android.support.v7."

    const-string/jumbo v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 49
    const-string/jumbo v5, "Caused by"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9a

    .line 50
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    :cond_9a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2e

    .line 61
    .end local v0    # "line":Ljava/lang/String;
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "startRecording":Z
    .end local v4    # "stringBuilder":Ljava/lang/StringBuilder;
    :catch_a4
    move-exception v5

    .line 64
    :cond_a5
    :goto_a5
    return-void

    .line 56
    .restart local v0    # "line":Ljava/lang/String;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "startRecording":Z
    .restart local v4    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_a6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 58
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/airbnb/android/AirbnbApplication;->sCrashLog:Ljava/lang/String;
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_af} :catch_a4

    goto :goto_a5
.end method
