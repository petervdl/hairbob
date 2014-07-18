.class public final Lbutterknife/ButterKnife;
.super Ljava/lang/Object;
.source "ButterKnife.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbutterknife/ButterKnife$1;,
        Lbutterknife/ButterKnife$Finder;
    }
.end annotation


# static fields
.field static final INJECTORS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field static final NO_OP:Ljava/lang/reflect/Method;

.field static final RESETTERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static debug:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 144
    const/4 v0, 0x0

    sput-boolean v0, Lbutterknife/ButterKnife;->debug:Z

    .line 146
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lbutterknife/ButterKnife;->INJECTORS:Ljava/util/Map;

    .line 147
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lbutterknife/ButterKnife;->RESETTERS:Ljava/util/Map;

    .line 148
    const/4 v0, 0x0

    sput-object v0, Lbutterknife/ButterKnife;->NO_OP:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static findById(Landroid/view/View;I)Landroid/view/View;
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 339
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static findInjectorForClass(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 265
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v4, Lbutterknife/ButterKnife;->INJECTORS:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 266
    .local v2, "inject":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_19

    .line 267
    sget-boolean v4, Lbutterknife/ButterKnife;->debug:Z

    if-eqz v4, :cond_17

    const-string/jumbo v4, "ButterKnife"

    const-string/jumbo v5, "HIT: Cached in injector map."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    move-object v4, v2

    .line 284
    :goto_18
    return-object v4

    .line 270
    :cond_19
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "clsName":Ljava/lang/String;
    const-string/jumbo v4, "android."

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2f

    const-string/jumbo v4, "java."

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 272
    :cond_2f
    sget-boolean v4, Lbutterknife/ButterKnife;->debug:Z

    if-eqz v4, :cond_3c

    const-string/jumbo v4, "ButterKnife"

    const-string/jumbo v5, "MISS: Reached framework class. Abandoning search."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_3c
    sget-object v4, Lbutterknife/ButterKnife;->NO_OP:Ljava/lang/reflect/Method;

    goto :goto_18

    .line 276
    :cond_3f
    :try_start_3f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "$$ViewInjector"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 277
    .local v3, "injector":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v4, "inject"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Lbutterknife/ButterKnife$Finder;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p0, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 278
    sget-boolean v4, Lbutterknife/ButterKnife;->debug:Z

    if-eqz v4, :cond_7b

    const-string/jumbo v4, "ButterKnife"

    const-string/jumbo v5, "HIT: Class loaded injection class."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3f .. :try_end_7b} :catch_82

    .line 283
    .end local v3    # "injector":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7b
    :goto_7b
    sget-object v4, Lbutterknife/ButterKnife;->INJECTORS:Ljava/util/Map;

    invoke-interface {v4, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v2

    .line 284
    goto :goto_18

    .line 279
    :catch_82
    move-exception v1

    .line 280
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    sget-boolean v4, Lbutterknife/ButterKnife;->debug:Z

    if-eqz v4, :cond_a9

    const-string/jumbo v4, "ButterKnife"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Not found. Trying superclass "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_a9
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lbutterknife/ButterKnife;->findInjectorForClass(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    goto :goto_7b
.end method

.method private static findResettersForClass(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 288
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v4, Lbutterknife/ButterKnife;->RESETTERS:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 289
    .local v2, "inject":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_19

    .line 290
    sget-boolean v4, Lbutterknife/ButterKnife;->debug:Z

    if-eqz v4, :cond_17

    const-string/jumbo v4, "ButterKnife"

    const-string/jumbo v5, "HIT: Cached in injector map."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    move-object v4, v2

    .line 307
    :goto_18
    return-object v4

    .line 293
    :cond_19
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "clsName":Ljava/lang/String;
    const-string/jumbo v4, "android."

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2f

    const-string/jumbo v4, "java."

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 295
    :cond_2f
    sget-boolean v4, Lbutterknife/ButterKnife;->debug:Z

    if-eqz v4, :cond_3c

    const-string/jumbo v4, "ButterKnife"

    const-string/jumbo v5, "MISS: Reached framework class. Abandoning search."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_3c
    sget-object v4, Lbutterknife/ButterKnife;->NO_OP:Ljava/lang/reflect/Method;

    goto :goto_18

    .line 299
    :cond_3f
    :try_start_3f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "$$ViewInjector"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 300
    .local v3, "injector":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v4, "reset"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 301
    sget-boolean v4, Lbutterknife/ButterKnife;->debug:Z

    if-eqz v4, :cond_71

    const-string/jumbo v4, "ButterKnife"

    const-string/jumbo v5, "HIT: Class loaded injection class."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3f .. :try_end_71} :catch_78

    .line 306
    .end local v3    # "injector":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_71
    :goto_71
    sget-object v4, Lbutterknife/ButterKnife;->RESETTERS:Ljava/util/Map;

    invoke-interface {v4, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v2

    .line 307
    goto :goto_18

    .line 302
    :catch_78
    move-exception v1

    .line 303
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    sget-boolean v4, Lbutterknife/ButterKnife;->debug:Z

    if-eqz v4, :cond_9f

    const-string/jumbo v4, "ButterKnife"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Not found. Trying superclass "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_9f
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lbutterknife/ButterKnife;->findResettersForClass(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    goto :goto_71
.end method

.method public static inject(Landroid/app/Activity;)V
    .registers 2
    .param p0, "target"    # Landroid/app/Activity;

    .prologue
    .line 162
    sget-object v0, Lbutterknife/ButterKnife$Finder;->ACTIVITY:Lbutterknife/ButterKnife$Finder;

    invoke-static {p0, p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Ljava/lang/Object;Lbutterknife/ButterKnife$Finder;)V

    .line 163
    return-void
.end method

.method public static inject(Ljava/lang/Object;Landroid/view/View;)V
    .registers 3
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "source"    # Landroid/view/View;

    .prologue
    .line 204
    sget-object v0, Lbutterknife/ButterKnife$Finder;->VIEW:Lbutterknife/ButterKnife$Finder;

    invoke-static {p0, p1, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Ljava/lang/Object;Lbutterknife/ButterKnife$Finder;)V

    .line 205
    return-void
.end method

.method static inject(Ljava/lang/Object;Ljava/lang/Object;Lbutterknife/ButterKnife$Finder;)V
    .registers 10
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "finder"    # Lbutterknife/ButterKnife$Finder;

    .prologue
    .line 246
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 248
    .local v3, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_4
    sget-boolean v4, Lbutterknife/ButterKnife;->debug:Z

    if-eqz v4, :cond_26

    const-string/jumbo v4, "ButterKnife"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Looking up view injector for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_26
    invoke-static {v3}, Lbutterknife/ButterKnife;->findInjectorForClass(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 250
    .local v1, "inject":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_3c

    .line 251
    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    aput-object p0, v5, v6

    const/4 v6, 0x2

    aput-object p1, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_3c} :catch_3d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3c} :catch_3f

    .line 262
    :cond_3c
    return-void

    .line 253
    .end local v1    # "inject":Ljava/lang/reflect/Method;
    :catch_3d
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/RuntimeException;
    throw v0

    .line 255
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_3f
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/Exception;
    move-object v2, v0

    .line 257
    .local v2, "t":Ljava/lang/Throwable;
    instance-of v4, v2, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v4, :cond_49

    .line 258
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 260
    :cond_49
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to inject views for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static reset(Ljava/lang/Object;)V
    .registers 8
    .param p0, "target"    # Ljava/lang/Object;

    .prologue
    .line 227
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 229
    .local v3, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_4
    sget-boolean v4, Lbutterknife/ButterKnife;->debug:Z

    if-eqz v4, :cond_26

    const-string/jumbo v4, "ButterKnife"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Looking up view injector for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_26
    invoke-static {v3}, Lbutterknife/ButterKnife;->findResettersForClass(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 231
    .local v1, "reset":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_36

    .line 232
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_36} :catch_37
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_36} :catch_39

    .line 243
    :cond_36
    return-void

    .line 234
    .end local v1    # "reset":Ljava/lang/reflect/Method;
    :catch_37
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/RuntimeException;
    throw v0

    .line 236
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_39
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/Exception;
    move-object v2, v0

    .line 238
    .local v2, "t":Ljava/lang/Throwable;
    instance-of v4, v2, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v4, :cond_43

    .line 239
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 241
    :cond_43
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to reset views for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method
