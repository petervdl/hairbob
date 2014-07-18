.class public Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;
.super Ljava/lang/Object;
.source "DebugSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/utils/DebugSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthorizedAccount"
.end annotation


# static fields
.field private static final KEY_AUTH_TOKEN:Ljava/lang/String; = "authtoken"

.field private static final KEY_ID:Ljava/lang/String; = "id"

.field private static final KEY_USERNAME:Ljava/lang/String; = "username"


# instance fields
.field private mAuthToken:Ljava/lang/String;

.field private mId:J

.field private mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "id"    # J
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "authToken"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-wide p1, p0, Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;->mId:J

    .line 162
    iput-object p3, p0, Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;->mUsername:Ljava/lang/String;

    .line 163
    iput-object p4, p0, Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;->mAuthToken:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 5
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    :try_start_3
    const-string/jumbo v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;->mId:J

    .line 153
    const-string/jumbo v1, "username"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;->mUsername:Ljava/lang/String;

    .line 154
    const-string/jumbo v1, "authtoken"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;->mAuthToken:Ljava/lang/String;
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_1e} :catch_1f

    .line 158
    return-void

    .line 155
    :catch_1f
    move-exception v0

    .line 156
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "invalid json"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$000(Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public static getAccounts(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v0, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;>;"
    :try_start_5
    new-instance v3, Lorg/json/JSONArray;

    invoke-static {p0}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 196
    .local v1, "array":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_21

    .line 197
    new-instance v3, Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 201
    :cond_21
    new-instance v3, Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount$1;

    invoke-direct {v3}, Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount$1;-><init>()V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_29} :catch_2a

    .line 212
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v2    # "i":I
    :goto_29
    return-object v0

    .line 208
    :catch_2a
    move-exception v3

    goto :goto_29
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 225
    if-ne p0, p1, :cond_5

    .line 234
    :cond_4
    :goto_4
    return v1

    .line 227
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 228
    goto :goto_4

    .line 229
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 230
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 231
    check-cast v0, Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;

    .line 232
    .local v0, "other":Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;
    iget-wide v3, p0, Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;->mId:J

    iget-wide v5, v0, Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;->mId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    .line 233
    goto :goto_4
.end method

.method public getAuthToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;->mAuthToken:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 167
    iget-wide v0, p0, Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;->mId:J

    return-wide v0
.end method

.method public getUsername()Ljava/lang/String;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 8

    .prologue
    .line 217
    const/16 v0, 0x1f

    .line 218
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 219
    .local v1, "result":I
    iget-wide v2, p0, Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;->mId:J

    iget-wide v4, p0, Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;->mId:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v1, v2, 0x1f

    .line 220
    return v1
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 6

    .prologue
    .line 179
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 181
    .local v1, "jso":Lorg/json/JSONObject;
    :try_start_5
    const-string/jumbo v2, "id"

    iget-wide v3, p0, Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;->mId:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 182
    const-string/jumbo v2, "username"

    iget-object v3, p0, Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;->mUsername:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    const-string/jumbo v2, "authtoken"

    iget-object v3, p0, Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1d} :catch_1e

    .line 188
    return-object v1

    .line 184
    :catch_1e
    move-exception v0

    .line 185
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "error json-ifying account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;->mUsername:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
