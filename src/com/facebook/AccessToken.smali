.class public final Lcom/facebook/AccessToken;
.super Ljava/lang/Object;
.source "AccessToken.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/AccessToken$1;,
        Lcom/facebook/AccessToken$SerializationProxyV1;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final ACCESS_TOKEN_KEY:Ljava/lang/String; = "access_token"

.field private static final ALREADY_EXPIRED_EXPIRATION_TIME:Ljava/util/Date;

.field private static final DEFAULT_ACCESS_TOKEN_SOURCE:Lcom/facebook/AccessTokenSource;

.field private static final DEFAULT_EXPIRATION_TIME:Ljava/util/Date;

.field private static final DEFAULT_LAST_REFRESH_TIME:Ljava/util/Date;

.field static final EXPIRES_IN_KEY:Ljava/lang/String; = "expires_in"

.field private static final MAX_DATE:Ljava/util/Date;

.field private static final MIN_DATE:Ljava/util/Date;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final expires:Ljava/util/Date;

.field private final lastRefresh:Ljava/util/Date;

.field private final permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final source:Lcom/facebook/AccessTokenSource;

.field private final token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 45
    const-class v0, Lcom/facebook/AccessToken;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_34

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/facebook/AccessToken;->$assertionsDisabled:Z

    .line 49
    new-instance v0, Ljava/util/Date;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lcom/facebook/AccessToken;->MIN_DATE:Ljava/util/Date;

    .line 50
    new-instance v0, Ljava/util/Date;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lcom/facebook/AccessToken;->MAX_DATE:Ljava/util/Date;

    .line 51
    sget-object v0, Lcom/facebook/AccessToken;->MAX_DATE:Ljava/util/Date;

    sput-object v0, Lcom/facebook/AccessToken;->DEFAULT_EXPIRATION_TIME:Ljava/util/Date;

    .line 52
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/facebook/AccessToken;->DEFAULT_LAST_REFRESH_TIME:Ljava/util/Date;

    .line 53
    sget-object v0, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_WEB:Lcom/facebook/AccessTokenSource;

    sput-object v0, Lcom/facebook/AccessToken;->DEFAULT_ACCESS_TOKEN_SOURCE:Lcom/facebook/AccessTokenSource;

    .line 54
    sget-object v0, Lcom/facebook/AccessToken;->MIN_DATE:Ljava/util/Date;

    sput-object v0, Lcom/facebook/AccessToken;->ALREADY_EXPIRED_EXPIRATION_TIME:Ljava/util/Date;

    return-void

    .line 45
    :cond_34
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V
    .registers 7
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "expires"    # Ljava/util/Date;
    .param p4, "source"    # Lcom/facebook/AccessTokenSource;
    .param p5, "lastRefresh"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/AccessTokenSource;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    .local p3, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    if-nez p3, :cond_9

    .line 64
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 67
    :cond_9
    iput-object p2, p0, Lcom/facebook/AccessToken;->expires:Ljava/util/Date;

    .line 68
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/AccessToken;->permissions:Ljava/util/List;

    .line 69
    iput-object p1, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;

    .line 71
    iput-object p5, p0, Lcom/facebook/AccessToken;->lastRefresh:Ljava/util/Date;

    .line 72
    return-void
.end method

.method private appendPermissions(Ljava/lang/StringBuilder;)V
    .registers 4
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 292
    const-string/jumbo v0, " permissions:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    iget-object v0, p0, Lcom/facebook/AccessToken;->permissions:Ljava/util/List;

    if-nez v0, :cond_11

    .line 294
    const-string/jumbo v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    :goto_10
    return-void

    .line 296
    :cond_11
    const-string/jumbo v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    const-string/jumbo v0, ", "

    iget-object v1, p0, Lcom/facebook/AccessToken;->permissions:Ljava/util/List;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    const-string/jumbo v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10
.end method

.method static createEmptyToken(Ljava/util/List;)Lcom/facebook/AccessToken;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/AccessToken;"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/facebook/AccessToken;

    const-string/jumbo v1, ""

    sget-object v2, Lcom/facebook/AccessToken;->ALREADY_EXPIRED_EXPIRATION_TIME:Ljava/util/Date;

    sget-object v4, Lcom/facebook/AccessTokenSource;->NONE:Lcom/facebook/AccessTokenSource;

    sget-object v5, Lcom/facebook/AccessToken;->DEFAULT_LAST_REFRESH_TIME:Ljava/util/Date;

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V

    return-object v0
.end method

.method private static createFromBundle(Ljava/util/List;Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)Lcom/facebook/AccessToken;
    .registers 10
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "source"    # Lcom/facebook/AccessTokenSource;
    .param p3, "expirationBase"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Lcom/facebook/AccessTokenSource;",
            "Ljava/util/Date;",
            ")",
            "Lcom/facebook/AccessToken;"
        }
    .end annotation

    .prologue
    .line 271
    .local p0, "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "access_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, "token":Ljava/lang/String;
    const-string/jumbo v0, "expires_in"

    invoke-static {p1, v0, p3}, Lcom/facebook/AccessToken;->getBundleLongAsDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    .line 274
    .local v2, "expires":Ljava/util/Date;
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    if-nez v2, :cond_18

    .line 275
    :cond_16
    const/4 v0, 0x0

    .line 278
    :goto_17
    return-object v0

    :cond_18
    new-instance v0, Lcom/facebook/AccessToken;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    move-object v3, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V

    goto :goto_17
.end method

.method static createFromCache(Landroid/os/Bundle;)Lcom/facebook/AccessToken;
    .registers 8
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 239
    const-string/jumbo v0, "com.facebook.TokenCachingStrategy.Permissions"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 241
    .local v6, "originalPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v6, :cond_2c

    .line 242
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 247
    .local v3, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_d
    new-instance v0, Lcom/facebook/AccessToken;

    const-string/jumbo v1, "com.facebook.TokenCachingStrategy.Token"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.facebook.TokenCachingStrategy.ExpirationDate"

    invoke-static {p0, v2}, Lcom/facebook/TokenCachingStrategy;->getDate(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-static {p0}, Lcom/facebook/TokenCachingStrategy;->getSource(Landroid/os/Bundle;)Lcom/facebook/AccessTokenSource;

    move-result-object v4

    const-string/jumbo v5, "com.facebook.TokenCachingStrategy.LastRefreshDate"

    invoke-static {p0, v5}, Lcom/facebook/TokenCachingStrategy;->getDate(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V

    return-object v0

    .line 244
    .end local v3    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .restart local v3    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_d
.end method

.method public static createFromExistingAccessToken(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/facebook/AccessTokenSource;Ljava/util/List;)Lcom/facebook/AccessToken;
    .registers 11
    .param p0, "accessToken"    # Ljava/lang/String;
    .param p1, "expirationTime"    # Ljava/util/Date;
    .param p2, "lastRefreshTime"    # Ljava/util/Date;
    .param p3, "accessTokenSource"    # Lcom/facebook/AccessTokenSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Lcom/facebook/AccessTokenSource;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/AccessToken;"
        }
    .end annotation

    .prologue
    .line 142
    .local p4, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_4

    .line 143
    sget-object p1, Lcom/facebook/AccessToken;->DEFAULT_EXPIRATION_TIME:Ljava/util/Date;

    .line 145
    :cond_4
    if-nez p2, :cond_8

    .line 146
    sget-object p2, Lcom/facebook/AccessToken;->DEFAULT_LAST_REFRESH_TIME:Ljava/util/Date;

    .line 148
    :cond_8
    if-nez p3, :cond_c

    .line 149
    sget-object p3, Lcom/facebook/AccessToken;->DEFAULT_ACCESS_TOKEN_SOURCE:Lcom/facebook/AccessTokenSource;

    .line 152
    :cond_c
    new-instance v0, Lcom/facebook/AccessToken;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V

    return-object v0
.end method

.method public static createFromNativeLinkingIntent(Landroid/content/Intent;)Lcom/facebook/AccessToken;
    .registers 5
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 164
    const-string/jumbo v1, "intent"

    invoke-static {p0, v1}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_e

    .line 170
    :goto_d
    return-object v0

    :cond_e
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_WEB:Lcom/facebook/AccessTokenSource;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/AccessToken;->createFromBundle(Ljava/util/List;Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)Lcom/facebook/AccessToken;

    move-result-object v0

    goto :goto_d
.end method

.method static createFromNativeLogin(Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;
    .registers 9
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "source"    # Lcom/facebook/AccessTokenSource;

    .prologue
    .line 195
    const-string/jumbo v3, "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH"

    new-instance v4, Ljava/util/Date;

    const-wide/16 v5, 0x0

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-static {p0, v3, v4}, Lcom/facebook/AccessToken;->getBundleLongAsDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    .line 197
    .local v0, "expires":Ljava/util/Date;
    const-string/jumbo v3, "com.facebook.platform.extra.PERMISSIONS"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 198
    .local v1, "permissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v3, "com.facebook.platform.extra.ACCESS_TOKEN"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "token":Ljava/lang/String;
    invoke-static {v1, v2, v0, p1}, Lcom/facebook/AccessToken;->createNew(Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;

    move-result-object v3

    return-object v3
.end method

.method static createFromRefresh(Lcom/facebook/AccessToken;Landroid/os/Bundle;)Lcom/facebook/AccessToken;
    .registers 8
    .param p0, "current"    # Lcom/facebook/AccessToken;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "FieldGetter"
        }
    .end annotation

    .prologue
    .line 214
    sget-boolean v2, Lcom/facebook/AccessToken;->$assertionsDisabled:Z

    if-nez v2, :cond_1c

    iget-object v2, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;

    sget-object v3, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_WEB:Lcom/facebook/AccessTokenSource;

    if-eq v2, v3, :cond_1c

    iget-object v2, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;

    sget-object v3, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_NATIVE:Lcom/facebook/AccessTokenSource;

    if-eq v2, v3, :cond_1c

    iget-object v2, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;

    sget-object v3, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_SERVICE:Lcom/facebook/AccessTokenSource;

    if-eq v2, v3, :cond_1c

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 218
    :cond_1c
    const-string/jumbo v2, "expires_in"

    new-instance v3, Ljava/util/Date;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {p1, v2, v3}, Lcom/facebook/AccessToken;->getBundleLongAsDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    .line 219
    .local v0, "expires":Ljava/util/Date;
    const-string/jumbo v2, "access_token"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "token":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;

    invoke-static {v2, v1, v0, v3}, Lcom/facebook/AccessToken;->createNew(Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;

    move-result-object v2

    return-object v2
.end method

.method static createFromString(Ljava/lang/String;Ljava/util/List;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;
    .registers 9
    .param p0, "token"    # Ljava/lang/String;
    .param p2, "source"    # Lcom/facebook/AccessTokenSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/AccessTokenSource;",
            ")",
            "Lcom/facebook/AccessToken;"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/facebook/AccessToken;

    sget-object v2, Lcom/facebook/AccessToken;->DEFAULT_EXPIRATION_TIME:Ljava/util/Date;

    sget-object v5, Lcom/facebook/AccessToken;->DEFAULT_LAST_REFRESH_TIME:Ljava/util/Date;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V

    return-object v0
.end method

.method static createFromTokenWithRefreshedPermissions(Lcom/facebook/AccessToken;Ljava/util/List;)Lcom/facebook/AccessToken;
    .registers 8
    .param p0, "token"    # Lcom/facebook/AccessToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/AccessToken;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/AccessToken;"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/facebook/AccessToken;

    iget-object v1, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/AccessToken;->expires:Ljava/util/Date;

    iget-object v4, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;

    iget-object v5, p0, Lcom/facebook/AccessToken;->lastRefresh:Ljava/util/Date;

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V

    return-object v0
.end method

.method static createFromWebBundle(Ljava/util/List;Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;
    .registers 7
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "source"    # Lcom/facebook/AccessTokenSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Lcom/facebook/AccessTokenSource;",
            ")",
            "Lcom/facebook/AccessToken;"
        }
    .end annotation

    .prologue
    .line 204
    .local p0, "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v2, "expires_in"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {p1, v2, v3}, Lcom/facebook/AccessToken;->getBundleLongAsDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    .line 205
    .local v0, "expires":Ljava/util/Date;
    const-string/jumbo v2, "access_token"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "token":Ljava/lang/String;
    invoke-static {p0, v1, v0, p2}, Lcom/facebook/AccessToken;->createNew(Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;

    move-result-object v2

    return-object v2
.end method

.method private static createNew(Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;
    .registers 10
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "expires"    # Ljava/util/Date;
    .param p3, "source"    # Lcom/facebook/AccessTokenSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Lcom/facebook/AccessTokenSource;",
            ")",
            "Lcom/facebook/AccessToken;"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p2, :cond_d

    .line 231
    :cond_8
    invoke-static {p0}, Lcom/facebook/AccessToken;->createEmptyToken(Ljava/util/List;)Lcom/facebook/AccessToken;

    move-result-object v0

    .line 233
    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Lcom/facebook/AccessToken;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V

    goto :goto_c
.end method

.method private static getBundleLongAsDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
    .registers 12
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "dateBase"    # Ljava/util/Date;

    .prologue
    const/4 v4, 0x0

    .line 335
    if-nez p0, :cond_4

    .line 357
    :cond_3
    :goto_3
    return-object v4

    .line 339
    :cond_4
    const-wide/high16 v1, -0x8000000000000000L

    .line 341
    .local v1, "secondsFromBase":J
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 342
    .local v3, "secondsObject":Ljava/lang/Object;
    instance-of v5, v3, Ljava/lang/Long;

    if-eqz v5, :cond_25

    .line 343
    check-cast v3, Ljava/lang/Long;

    .end local v3    # "secondsObject":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 354
    :goto_14
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_32

    .line 355
    new-instance v4, Ljava/util/Date;

    const-wide v5, 0x7fffffffffffffffL

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    goto :goto_3

    .line 344
    .restart local v3    # "secondsObject":Ljava/lang/Object;
    :cond_25
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 346
    :try_start_29
    check-cast v3, Ljava/lang/String;

    .end local v3    # "secondsObject":Ljava/lang/Object;
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_2e} :catch_30

    move-result-wide v1

    goto :goto_14

    .line 347
    :catch_30
    move-exception v0

    .line 348
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_3

    .line 357
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_32
    new-instance v4, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v7, v1

    add-long/2addr v5, v7

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    goto :goto_3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 330
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Cannot readObject, serialization proxy required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private tokenToString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 283
    const-string/jumbo v0, "null"

    .line 287
    :goto_7
    return-object v0

    .line 284
    :cond_8
    sget-object v0, Lcom/facebook/LoggingBehavior;->INCLUDE_ACCESS_TOKENS:Lcom/facebook/LoggingBehavior;

    invoke-static {v0}, Lcom/facebook/Settings;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 285
    iget-object v0, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;

    goto :goto_7

    .line 287
    :cond_13
    const-string/jumbo v0, "ACCESS_TOKEN_REMOVED"

    goto :goto_7
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 8

    .prologue
    .line 325
    new-instance v0, Lcom/facebook/AccessToken$SerializationProxyV1;

    iget-object v1, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/AccessToken;->expires:Ljava/util/Date;

    iget-object v3, p0, Lcom/facebook/AccessToken;->permissions:Ljava/util/List;

    iget-object v4, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;

    iget-object v5, p0, Lcom/facebook/AccessToken;->lastRefresh:Ljava/util/Date;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/AccessToken$SerializationProxyV1;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Lcom/facebook/AccessToken$1;)V

    return-object v0
.end method


# virtual methods
.method public getExpires()Ljava/util/Date;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/facebook/AccessToken;->expires:Ljava/util/Date;

    return-object v0
.end method

.method public getLastRefresh()Ljava/util/Date;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/facebook/AccessToken;->lastRefresh:Ljava/util/Date;

    return-object v0
.end method

.method public getPermissions()Ljava/util/List;
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
    .line 101
    iget-object v0, p0, Lcom/facebook/AccessToken;->permissions:Ljava/util/List;

    return-object v0
.end method

.method public getSource()Lcom/facebook/AccessTokenSource;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;

    return-object v0
.end method

.method isInvalid()Z
    .registers 3

    .prologue
    .line 265
    iget-object v0, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v1, p0, Lcom/facebook/AccessToken;->expires:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_15
    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method toCacheBundle()Landroid/os/Bundle;
    .registers 5

    .prologue
    .line 253
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 255
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "com.facebook.TokenCachingStrategy.Token"

    iget-object v2, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string/jumbo v1, "com.facebook.TokenCachingStrategy.ExpirationDate"

    iget-object v2, p0, Lcom/facebook/AccessToken;->expires:Ljava/util/Date;

    invoke-static {v0, v1, v2}, Lcom/facebook/TokenCachingStrategy;->putDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)V

    .line 257
    const-string/jumbo v1, "com.facebook.TokenCachingStrategy.Permissions"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/facebook/AccessToken;->permissions:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 258
    const-string/jumbo v1, "com.facebook.TokenCachingStrategy.AccessTokenSource"

    iget-object v2, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 259
    const-string/jumbo v1, "com.facebook.TokenCachingStrategy.LastRefreshDate"

    iget-object v2, p0, Lcom/facebook/AccessToken;->lastRefresh:Ljava/util/Date;

    invoke-static {v0, v1, v2}, Lcom/facebook/TokenCachingStrategy;->putDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)V

    .line 261
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{AccessToken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    const-string/jumbo v1, " token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/AccessToken;->tokenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-direct {p0, v0}, Lcom/facebook/AccessToken;->appendPermissions(Ljava/lang/StringBuilder;)V

    .line 180
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
