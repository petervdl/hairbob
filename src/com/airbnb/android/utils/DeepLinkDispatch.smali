.class public Lcom/airbnb/android/utils/DeepLinkDispatch;
.super Ljava/lang/Object;
.source "DeepLinkDispatch.java"


# static fields
.field private static final SEARCH_IDENTIFIER:Ljava/lang/String; = "s"


# instance fields
.field private mHost:Ljava/lang/String;

.field private mPathSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/content/Intent;)Lcom/airbnb/android/utils/DeepLinkDispatch;
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 21
    new-instance v0, Lcom/airbnb/android/utils/DeepLinkDispatch;

    invoke-direct {v0}, Lcom/airbnb/android/utils/DeepLinkDispatch;-><init>()V

    .line 22
    .local v0, "dispatch":Lcom/airbnb/android/utils/DeepLinkDispatch;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/airbnb/android/utils/DeepLinkDispatch;->mQueryParameters:Ljava/util/Map;

    .line 23
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, v0, Lcom/airbnb/android/utils/DeepLinkDispatch;->mPathSegments:Ljava/util/List;

    .line 25
    invoke-direct {v0, p0}, Lcom/airbnb/android/utils/DeepLinkDispatch;->parseParameters(Landroid/content/Intent;)V

    .line 27
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/airbnb/android/utils/DeepLinkDispatch;
    .registers 3
    .param p0, "deepLinkNotificationUri"    # Ljava/lang/String;

    .prologue
    .line 31
    new-instance v0, Lcom/airbnb/android/utils/DeepLinkDispatch;

    invoke-direct {v0}, Lcom/airbnb/android/utils/DeepLinkDispatch;-><init>()V

    .line 32
    .local v0, "dispatch":Lcom/airbnb/android/utils/DeepLinkDispatch;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/airbnb/android/utils/DeepLinkDispatch;->mQueryParameters:Ljava/util/Map;

    .line 33
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, v0, Lcom/airbnb/android/utils/DeepLinkDispatch;->mPathSegments:Ljava/util/List;

    .line 35
    invoke-direct {v0, p0}, Lcom/airbnb/android/utils/DeepLinkDispatch;->parseNotificationParameters(Ljava/lang/String;)V

    .line 37
    return-object v0
.end method

.method private parseNotificationParameters(Ljava/lang/String;)V
    .registers 14
    .param p1, "notificationUri"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 118
    const-string/jumbo v7, "\\?"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 120
    .local v6, "split":[Ljava/lang/String;
    array-length v7, v6

    if-lez v7, :cond_23

    .line 121
    aget-object v7, v6, v11

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_17
    if-ge v1, v3, :cond_23

    aget-object v5, v0, v1

    .line 122
    .local v5, "segment":Ljava/lang/String;
    iget-object v7, p0, Lcom/airbnb/android/utils/DeepLinkDispatch;->mPathSegments:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 126
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "segment":Ljava/lang/String;
    :cond_23
    array-length v7, v6

    if-le v7, v10, :cond_4d

    .line 127
    aget-object v7, v6, v10

    const-string/jumbo v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_31
    if-ge v1, v3, :cond_4d

    aget-object v4, v0, v1

    .line 128
    .local v4, "queryParamPair":Ljava/lang/String;
    const-string/jumbo v7, "="

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "kv":[Ljava/lang/String;
    iget-object v8, p0, Lcom/airbnb/android/utils/DeepLinkDispatch;->mQueryParameters:Ljava/util/Map;

    aget-object v9, v2, v11

    array-length v7, v2

    if-le v7, v10, :cond_4b

    aget-object v7, v2, v10

    :goto_45
    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 129
    :cond_4b
    const/4 v7, 0x0

    goto :goto_45

    .line 132
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "kv":[Ljava/lang/String;
    .end local v3    # "len$":I
    .end local v4    # "queryParamPair":Ljava/lang/String;
    :cond_4d
    return-void
.end method

.method private parseParameters(Landroid/content/Intent;)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 108
    .local v1, "intentData":Landroid/net/Uri;
    if-eqz v1, :cond_30

    .line 109
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/utils/DeepLinkDispatch;->mHost:Ljava/lang/String;

    .line 110
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/utils/DeepLinkDispatch;->mPathSegments:Ljava/util/List;

    .line 111
    invoke-virtual {v1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 112
    .local v2, "parameterName":Ljava/lang/String;
    iget-object v3, p0, Lcom/airbnb/android/utils/DeepLinkDispatch;->mQueryParameters:Ljava/util/Map;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    .line 115
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "parameterName":Ljava/lang/String;
    :cond_30
    return-void
.end method


# virtual methods
.method public getParameters()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/airbnb/android/utils/DeepLinkDispatch;->mQueryParameters:Ljava/util/Map;

    return-object v0
.end method

.method public getPathSegments()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/airbnb/android/utils/DeepLinkDispatch;->mPathSegments:Ljava/util/List;

    return-object v0
.end method

.method public getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/airbnb/android/utils/DeepLinkDispatch;->mQueryParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSearchQuery()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 93
    iget-object v1, p0, Lcom/airbnb/android/utils/DeepLinkDispatch;->mPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 101
    :cond_b
    :goto_b
    return-object v0

    .line 96
    :cond_c
    const-string/jumbo v1, "s"

    iget-object v2, p0, Lcom/airbnb/android/utils/DeepLinkDispatch;->mHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 97
    iget-object v0, p0, Lcom/airbnb/android/utils/DeepLinkDispatch;->mPathSegments:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_b

    .line 98
    :cond_20
    iget-object v1, p0, Lcom/airbnb/android/utils/DeepLinkDispatch;->mPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_b

    const-string/jumbo v1, "s"

    iget-object v2, p0, Lcom/airbnb/android/utils/DeepLinkDispatch;->mPathSegments:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 99
    iget-object v0, p0, Lcom/airbnb/android/utils/DeepLinkDispatch;->mPathSegments:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_b
.end method

.method public isPath(Ljava/lang/String;)Z
    .registers 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 77
    const-string/jumbo v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "segments":[Ljava/lang/String;
    array-length v2, v1

    iget-object v4, p0, Lcom/airbnb/android/utils/DeepLinkDispatch;->mPathSegments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v2, v4, :cond_13

    move v2, v3

    .line 89
    :goto_12
    return v2

    .line 83
    :cond_13
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    array-length v2, v1

    if-ge v0, v2, :cond_2c

    .line 84
    iget-object v2, p0, Lcom/airbnb/android/utils/DeepLinkDispatch;->mPathSegments:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aget-object v4, v1, v0

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    move v2, v3

    .line 85
    goto :goto_12

    .line 83
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 89
    :cond_2c
    const/4 v2, 0x1

    goto :goto_12
.end method
