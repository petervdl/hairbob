.class public Lnet/hockeyapp/android/CrashManager;
.super Ljava/lang/Object;
.source "CrashManager.java"


# static fields
.field private static identifier:Ljava/lang/String;

.field private static urlString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 72
    sput-object v0, Lnet/hockeyapp/android/CrashManager;->identifier:Ljava/lang/String;

    .line 77
    sput-object v0, Lnet/hockeyapp/android/CrashManager;->urlString:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lnet/hockeyapp/android/CrashManagerListener;Z)V
    .registers 3
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lnet/hockeyapp/android/CrashManagerListener;
    .param p2, "x2"    # Z

    .prologue
    .line 68
    invoke-static {p0, p1, p2}, Lnet/hockeyapp/android/CrashManager;->registerHandler(Landroid/content/Context;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;Lnet/hockeyapp/android/CrashManagerListener;Z)V
    .registers 3
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lnet/hockeyapp/android/CrashManagerListener;
    .param p2, "x2"    # Z

    .prologue
    .line 68
    invoke-static {p0, p1, p2}, Lnet/hockeyapp/android/CrashManager;->sendCrashes(Landroid/content/Context;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    return-void
.end method

.method private static contentsOfFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 414
    .local v0, "contents":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 416
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_6
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_14} :catch_5c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_14} :catch_3f
    .catchall {:try_start_6 .. :try_end_14} :catchall_4b

    .line 417
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 418
    .local v2, "line":Ljava/lang/String;
    :goto_15
    :try_start_15
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 419
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    const-string/jumbo v5, "line.separator"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_28} :catch_29
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_28} :catch_59
    .catchall {:try_start_15 .. :try_end_28} :catchall_56

    goto :goto_15

    .line 423
    :catch_29
    move-exception v5

    move-object v3, v4

    .line 429
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :goto_2b
    if-eqz v3, :cond_30

    .line 431
    :try_start_2d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_52

    .line 438
    :cond_30
    :goto_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 429
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_35
    if-eqz v4, :cond_5e

    .line 431
    :try_start_37
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3c

    move-object v3, v4

    .line 434
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_30

    .line 433
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_3c
    move-exception v5

    move-object v3, v4

    .line 434
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_30

    .line 425
    .end local v2    # "line":Ljava/lang/String;
    :catch_3f
    move-exception v1

    .line 426
    .local v1, "e":Ljava/io/IOException;
    :goto_40
    :try_start_40
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_4b

    .line 429
    if-eqz v3, :cond_30

    .line 431
    :try_start_45
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_30

    .line 433
    :catch_49
    move-exception v5

    goto :goto_30

    .line 429
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_4b
    move-exception v5

    :goto_4c
    if-eqz v3, :cond_51

    .line 431
    :try_start_4e
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_54

    .line 434
    :cond_51
    :goto_51
    throw v5

    .line 433
    :catch_52
    move-exception v5

    goto :goto_30

    :catch_54
    move-exception v6

    goto :goto_51

    .line 429
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_56
    move-exception v5

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_4c

    .line 425
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_59
    move-exception v1

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_40

    .line 423
    .end local v2    # "line":Ljava/lang/String;
    :catch_5c
    move-exception v5

    goto :goto_2b

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_5e
    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_30
.end method

.method private static deleteStackTrace(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 397
    invoke-virtual {p0, p1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 399
    const-string/jumbo v3, ".stacktrace"

    const-string/jumbo v4, ".user"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 400
    .local v2, "user":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 402
    const-string/jumbo v3, ".stacktrace"

    const-string/jumbo v4, ".contact"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "contact":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 405
    const-string/jumbo v3, ".stacktrace"

    const-string/jumbo v4, ".description"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 406
    .local v1, "description":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 407
    return-void
.end method

.method public static deleteStackTraces(Landroid/content/Context;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 279
    const-string/jumbo v3, "HockeyApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Looking for exceptions in: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lnet/hockeyapp/android/Constants;->FILES_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-static {}, Lnet/hockeyapp/android/CrashManager;->searchForStackTraces()[Ljava/lang/String;

    move-result-object v2

    .line 282
    .local v2, "list":[Ljava/lang/String;
    if-eqz v2, :cond_80

    array-length v3, v2

    if-lez v3, :cond_80

    .line 283
    const-string/jumbo v3, "HockeyApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " stacktrace(s)."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_48
    array-length v3, v2

    if-ge v1, v3, :cond_80

    .line 287
    :try_start_4b
    const-string/jumbo v3, "HockeyApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Delete stacktrace "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    aget-object v3, v2, v1

    invoke-static {p0, v3}, Lnet/hockeyapp/android/CrashManager;->deleteStackTrace(Landroid/content/Context;Ljava/lang/String;)V

    .line 289
    aget-object v3, v2, v1

    invoke-virtual {p0, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_78} :catch_7b

    .line 285
    :goto_78
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    .line 291
    :catch_7b
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_78

    .line 296
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "index":I
    :cond_80
    return-void
.end method

.method public static execute(Landroid/content/Context;Lnet/hockeyapp/android/CrashManagerListener;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 150
    if-eqz p1, :cond_31

    invoke-virtual {p1}, Lnet/hockeyapp/android/CrashManagerListener;->ignoreDefaultHandler()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_31

    move v3, v4

    :goto_f
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 152
    .local v2, "ignoreDefaultHandler":Ljava/lang/Boolean;
    invoke-static {p0}, Lnet/hockeyapp/android/CrashManager;->hasStackTraces(Landroid/content/Context;)I

    move-result v1

    .line 153
    .local v1, "foundOrSend":I
    if-ne v1, v4, :cond_3b

    .line 154
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 155
    .local v0, "autoSend":Ljava/lang/Boolean;
    if-eqz p1, :cond_23

    .line 156
    invoke-virtual {p1}, Lnet/hockeyapp/android/CrashManagerListener;->onCrashesFound()Ljava/lang/Boolean;

    move-result-object v0

    .line 159
    :cond_23
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_33

    .line 160
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {p0, p1, v3}, Lnet/hockeyapp/android/CrashManager;->showDialog(Landroid/content/Context;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    .line 172
    .end local v0    # "autoSend":Ljava/lang/Boolean;
    :goto_30
    return-void

    .end local v1    # "foundOrSend":I
    .end local v2    # "ignoreDefaultHandler":Ljava/lang/Boolean;
    :cond_31
    move v3, v5

    .line 150
    goto :goto_f

    .line 163
    .restart local v0    # "autoSend":Ljava/lang/Boolean;
    .restart local v1    # "foundOrSend":I
    .restart local v2    # "ignoreDefaultHandler":Ljava/lang/Boolean;
    :cond_33
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {p0, p1, v3}, Lnet/hockeyapp/android/CrashManager;->sendCrashes(Landroid/content/Context;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    goto :goto_30

    .line 166
    .end local v0    # "autoSend":Ljava/lang/Boolean;
    :cond_3b
    const/4 v3, 0x2

    if-ne v1, v3, :cond_46

    .line 167
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {p0, p1, v3}, Lnet/hockeyapp/android/CrashManager;->sendCrashes(Landroid/content/Context;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    goto :goto_30

    .line 170
    :cond_46
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {p0, p1, v3}, Lnet/hockeyapp/android/CrashManager;->registerHandler(Landroid/content/Context;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    goto :goto_30
.end method

.method private static getURLString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnet/hockeyapp/android/CrashManager;->urlString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/2/apps/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lnet/hockeyapp/android/CrashManager;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/crashes/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasStackTraces(Landroid/content/Context;)I
    .registers 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    invoke-static {}, Lnet/hockeyapp/android/CrashManager;->searchForStackTraces()[Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "filenames":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 185
    .local v1, "confirmedFilenames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 186
    .local v7, "result":I
    array-length v8, v3

    if-lez v8, :cond_37

    .line 188
    :try_start_9
    const-string/jumbo v8, "HockeySDK"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 189
    .local v6, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v8, "ConfirmedFilenames"

    const-string/jumbo v9, ""

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "\\|"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_25} :catch_3d

    move-result-object v1

    .line 195
    .end local v6    # "preferences":Landroid/content/SharedPreferences;
    :goto_26
    if-eqz v1, :cond_3b

    .line 196
    const/4 v7, 0x2

    .line 198
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2c
    if-ge v4, v5, :cond_37

    aget-object v2, v0, v4

    .line 199
    .local v2, "filename":Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_38

    .line 200
    const/4 v7, 0x1

    .line 210
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "filename":Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_37
    :goto_37
    return v7

    .line 198
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "filename":Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 206
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "filename":Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_3b
    const/4 v7, 0x1

    goto :goto_37

    .line 191
    :catch_3d
    move-exception v8

    goto :goto_26
.end method

.method private static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;Z)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "appIdentifier"    # Ljava/lang/String;
    .param p3, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;
    .param p4, "registerHandler"    # Z

    .prologue
    .line 304
    sput-object p1, Lnet/hockeyapp/android/CrashManager;->urlString:Ljava/lang/String;

    .line 305
    sput-object p2, Lnet/hockeyapp/android/CrashManager;->identifier:Ljava/lang/String;

    .line 307
    invoke-static {p0}, Lnet/hockeyapp/android/Constants;->loadFromContext(Landroid/content/Context;)V

    .line 309
    sget-object v1, Lnet/hockeyapp/android/CrashManager;->identifier:Ljava/lang/String;

    if-nez v1, :cond_f

    .line 310
    sget-object v1, Lnet/hockeyapp/android/Constants;->APP_PACKAGE:Ljava/lang/String;

    sput-object v1, Lnet/hockeyapp/android/CrashManager;->identifier:Ljava/lang/String;

    .line 313
    :cond_f
    if-eqz p4, :cond_29

    .line 314
    if-eqz p3, :cond_2a

    invoke-virtual {p3}, Lnet/hockeyapp/android/CrashManagerListener;->ignoreDefaultHandler()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v1, 0x1

    :goto_1e
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 315
    .local v0, "ignoreDefaultHandler":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {p0, p3, v1}, Lnet/hockeyapp/android/CrashManager;->registerHandler(Landroid/content/Context;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    .line 317
    .end local v0    # "ignoreDefaultHandler":Ljava/lang/Boolean;
    :cond_29
    return-void

    .line 314
    :cond_2a
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method private static joinArray([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "array"    # [Ljava/lang/String;
    .param p1, "delimiter"    # Ljava/lang/String;

    .prologue
    .line 462
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 463
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_19

    .line 464
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 465
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_16

    .line 466
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 463
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 469
    :cond_19
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "appIdentifier"    # Ljava/lang/String;
    .param p3, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lnet/hockeyapp/android/CrashManager;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    .line 110
    invoke-static {p0, p3}, Lnet/hockeyapp/android/CrashManager;->execute(Landroid/content/Context;Lnet/hockeyapp/android/CrashManagerListener;)V

    .line 111
    return-void
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appIdentifier"    # Ljava/lang/String;
    .param p2, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;

    .prologue
    .line 97
    const-string/jumbo v0, "https://sdk.hockeyapp.net/"

    invoke-static {p0, v0, p1, p2}, Lnet/hockeyapp/android/CrashManager;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;)V

    .line 98
    return-void
.end method

.method private static registerHandler(Landroid/content/Context;Lnet/hockeyapp/android/CrashManagerListener;Z)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;
    .param p2, "ignoreDefaultHandler"    # Z

    .prologue
    .line 368
    sget-object v1, Lnet/hockeyapp/android/Constants;->APP_VERSION:Ljava/lang/String;

    if-eqz v1, :cond_3d

    sget-object v1, Lnet/hockeyapp/android/Constants;->APP_PACKAGE:Ljava/lang/String;

    if-eqz v1, :cond_3d

    .line 370
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 371
    .local v0, "currentHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    if-eqz v0, :cond_30

    .line 372
    const-string/jumbo v1, "HockeyApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Current handler class = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_30
    instance-of v1, v0, Lnet/hockeyapp/android/internal/ExceptionHandler;

    if-nez v1, :cond_3c

    .line 377
    new-instance v1, Lnet/hockeyapp/android/internal/ExceptionHandler;

    invoke-direct {v1, v0, p1, p2}, Lnet/hockeyapp/android/internal/ExceptionHandler;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 383
    .end local v0    # "currentHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    :cond_3c
    :goto_3c
    return-void

    .line 381
    :cond_3d
    const-string/jumbo v1, "HockeyApp"

    const-string/jumbo v2, "Exception handler not set because version or package is null."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c
.end method

.method private static saveConfirmedStackTraces(Landroid/content/Context;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 446
    :try_start_0
    invoke-static {}, Lnet/hockeyapp/android/CrashManager;->searchForStackTraces()[Ljava/lang/String;

    move-result-object v1

    .line 447
    .local v1, "filenames":[Ljava/lang/String;
    const-string/jumbo v3, "HockeySDK"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 448
    .local v2, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 449
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "ConfirmedFilenames"

    const-string/jumbo v4, "|"

    invoke-static {v1, v4}, Lnet/hockeyapp/android/CrashManager;->joinArray([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 450
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    .line 455
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "filenames":[Ljava/lang/String;
    .end local v2    # "preferences":Landroid/content/SharedPreferences;
    :goto_20
    return-void

    .line 452
    :catch_21
    move-exception v3

    goto :goto_20
.end method

.method private static searchForStackTraces()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 477
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lnet/hockeyapp/android/Constants;->FILES_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 478
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 481
    new-instance v1, Lnet/hockeyapp/android/CrashManager$4;

    invoke-direct {v1}, Lnet/hockeyapp/android/CrashManager$4;-><init>()V

    .line 486
    .local v1, "filter":Ljava/io/FilenameFilter;
    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static sendCrashes(Landroid/content/Context;Lnet/hockeyapp/android/CrashManagerListener;Z)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;
    .param p2, "ignoreDefaultHandler"    # Z

    .prologue
    .line 353
    invoke-static {p0}, Lnet/hockeyapp/android/CrashManager;->saveConfirmedStackTraces(Landroid/content/Context;)V

    .line 355
    new-instance v0, Lnet/hockeyapp/android/CrashManager$3;

    invoke-direct {v0, p0, p1, p2}, Lnet/hockeyapp/android/CrashManager$3;-><init>(Landroid/content/Context;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    invoke-virtual {v0}, Lnet/hockeyapp/android/CrashManager$3;->start()V

    .line 362
    return-void
.end method

.method private static showDialog(Landroid/content/Context;Lnet/hockeyapp/android/CrashManagerListener;Z)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;
    .param p2, "ignoreDefaultHandler"    # Z

    .prologue
    .line 324
    if-nez p0, :cond_3

    .line 346
    :goto_2
    return-void

    .line 328
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 329
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lnet/hockeyapp/android/Strings;->get(Lnet/hockeyapp/android/StringListener;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 330
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lnet/hockeyapp/android/Strings;->get(Lnet/hockeyapp/android/StringListener;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 332
    const/4 v1, 0x2

    invoke-static {p1, v1}, Lnet/hockeyapp/android/Strings;->get(Lnet/hockeyapp/android/StringListener;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnet/hockeyapp/android/CrashManager$1;

    invoke-direct {v2, p0, p1, p2}, Lnet/hockeyapp/android/CrashManager$1;-><init>(Landroid/content/Context;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 339
    const/4 v1, 0x3

    invoke-static {p1, v1}, Lnet/hockeyapp/android/Strings;->get(Lnet/hockeyapp/android/StringListener;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnet/hockeyapp/android/CrashManager$2;

    invoke-direct {v2, p0, p1, p2}, Lnet/hockeyapp/android/CrashManager$2;-><init>(Landroid/content/Context;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 345
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_2
.end method

.method public static submitStackTraces(Landroid/content/Context;Lnet/hockeyapp/android/CrashManagerListener;)V
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;

    .prologue
    .line 220
    const-string/jumbo v9, "HockeyApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Looking for exceptions in: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lnet/hockeyapp/android/Constants;->FILES_PATH:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-static {}, Lnet/hockeyapp/android/CrashManager;->searchForStackTraces()[Ljava/lang/String;

    move-result-object v5

    .line 222
    .local v5, "list":[Ljava/lang/String;
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 224
    .local v8, "successful":Ljava/lang/Boolean;
    if-eqz v5, :cond_165

    array-length v9, v5

    if-lez v9, :cond_165

    .line 225
    const-string/jumbo v9, "HockeyApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Found "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " stacktrace(s)."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_4d
    array-length v9, v5

    if-ge v4, v9, :cond_165

    .line 230
    :try_start_50
    aget-object v1, v5, v4

    .line 231
    .local v1, "filename":Ljava/lang/String;
    invoke-static {p0, v1}, Lnet/hockeyapp/android/CrashManager;->contentsOfFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 232
    .local v7, "stacktrace":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_112

    .line 234
    const-string/jumbo v9, "HockeyApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Transmitting crash data: \n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 236
    .local v2, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-static {}, Lnet/hockeyapp/android/CrashManager;->getURLString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 238
    .local v3, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v6, "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v10, "raw"

    invoke-direct {v9, v10, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v10, "userID"

    const-string/jumbo v11, ".stacktrace"

    const-string/jumbo v12, ".user"

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lnet/hockeyapp/android/CrashManager;->contentsOfFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v10, "contact"

    const-string/jumbo v11, ".stacktrace"

    const-string/jumbo v12, ".contact"

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lnet/hockeyapp/android/CrashManager;->contentsOfFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v10, "description"

    const-string/jumbo v11, ".stacktrace"

    const-string/jumbo v12, ".description"

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lnet/hockeyapp/android/CrashManager;->contentsOfFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v10, "sdk"

    const-string/jumbo v11, "HockeySDK"

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v10, "sdk_version"

    const-string/jumbo v11, "2.2.0"

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    new-instance v9, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string/jumbo v10, "UTF-8"

    invoke-direct {v9, v6, v10}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 248
    instance-of v9, v2, Lorg/apache/http/client/HttpClient;

    if-nez v9, :cond_126

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    .line 249
    .end local v2    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :goto_10d
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_111} :catch_12c
    .catchall {:try_start_50 .. :try_end_111} :catchall_14d

    move-result-object v8

    .line 256
    .end local v3    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v6    # "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_112
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_141

    .line 257
    aget-object v9, v5, v4

    invoke-static {p0, v9}, Lnet/hockeyapp/android/CrashManager;->deleteStackTrace(Landroid/content/Context;Ljava/lang/String;)V

    .line 259
    if-eqz p1, :cond_122

    .line 260
    invoke-virtual {p1}, Lnet/hockeyapp/android/CrashManagerListener;->onCrashesSent()V

    .line 227
    .end local v1    # "filename":Ljava/lang/String;
    .end local v7    # "stacktrace":Ljava/lang/String;
    :cond_122
    :goto_122
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4d

    .line 248
    .restart local v1    # "filename":Ljava/lang/String;
    .restart local v2    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v3    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v6    # "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v7    # "stacktrace":Ljava/lang/String;
    :cond_126
    :try_start_126
    check-cast v2, Lorg/apache/http/client/HttpClient;

    .end local v2    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-static {v2, v3}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_126 .. :try_end_12b} :catch_12c
    .catchall {:try_start_126 .. :try_end_12b} :catchall_14d

    goto :goto_10d

    .line 252
    .end local v1    # "filename":Ljava/lang/String;
    .end local v3    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v6    # "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v7    # "stacktrace":Ljava/lang/String;
    :catch_12c
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    :try_start_12d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_130
    .catchall {:try_start_12d .. :try_end_130} :catchall_14d

    .line 256
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_147

    .line 257
    aget-object v9, v5, v4

    invoke-static {p0, v9}, Lnet/hockeyapp/android/CrashManager;->deleteStackTrace(Landroid/content/Context;Ljava/lang/String;)V

    .line 259
    if-eqz p1, :cond_122

    .line 260
    invoke-virtual {p1}, Lnet/hockeyapp/android/CrashManagerListener;->onCrashesSent()V

    goto :goto_122

    .line 264
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "filename":Ljava/lang/String;
    .restart local v7    # "stacktrace":Ljava/lang/String;
    :cond_141
    if-eqz p1, :cond_122

    .line 265
    invoke-virtual {p1}, Lnet/hockeyapp/android/CrashManagerListener;->onCrashesNotSent()V

    goto :goto_122

    .line 264
    .end local v1    # "filename":Ljava/lang/String;
    .end local v7    # "stacktrace":Ljava/lang/String;
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_147
    if-eqz p1, :cond_122

    .line 265
    invoke-virtual {p1}, Lnet/hockeyapp/android/CrashManagerListener;->onCrashesNotSent()V

    goto :goto_122

    .line 256
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_14d
    move-exception v9

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_15f

    .line 257
    aget-object v10, v5, v4

    invoke-static {p0, v10}, Lnet/hockeyapp/android/CrashManager;->deleteStackTrace(Landroid/content/Context;Ljava/lang/String;)V

    .line 259
    if-eqz p1, :cond_15e

    .line 260
    invoke-virtual {p1}, Lnet/hockeyapp/android/CrashManagerListener;->onCrashesSent()V

    .line 265
    :cond_15e
    :goto_15e
    throw v9

    .line 264
    :cond_15f
    if-eqz p1, :cond_15e

    .line 265
    invoke-virtual {p1}, Lnet/hockeyapp/android/CrashManagerListener;->onCrashesNotSent()V

    goto :goto_15e

    .line 271
    .end local v4    # "index":I
    :cond_165
    return-void
.end method
