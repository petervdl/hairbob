.class Lcom/facebook/widget/LoginButton$LoginButtonProperties;
.super Ljava/lang/Object;
.source "LoginButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/LoginButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoginButtonProperties"
.end annotation


# instance fields
.field private authorizationType:Lcom/facebook/internal/SessionAuthorizationType;

.field private defaultAudience:Lcom/facebook/SessionDefaultAudience;

.field private loginBehavior:Lcom/facebook/SessionLoginBehavior;

.field private onErrorListener:Lcom/facebook/widget/LoginButton$OnErrorListener;

.field private permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sessionStatusCallback:Lcom/facebook/Session$StatusCallback;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sget-object v0, Lcom/facebook/SessionDefaultAudience;->FRIENDS:Lcom/facebook/SessionDefaultAudience;

    iput-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->defaultAudience:Lcom/facebook/SessionDefaultAudience;

    .line 75
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->authorizationType:Lcom/facebook/internal/SessionAuthorizationType;

    .line 78
    sget-object v0, Lcom/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/facebook/SessionLoginBehavior;

    iput-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    return-void
.end method

.method static synthetic access$1000(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/SessionDefaultAudience;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->defaultAudience:Lcom/facebook/SessionDefaultAudience;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/SessionLoginBehavior;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/internal/SessionAuthorizationType;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->authorizationType:Lcom/facebook/internal/SessionAuthorizationType;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/Session$StatusCallback;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->sessionStatusCallback:Lcom/facebook/Session$StatusCallback;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/widget/LoginButton$OnErrorListener;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->onErrorListener:Lcom/facebook/widget/LoginButton$OnErrorListener;

    return-object v0
.end method

.method private validatePermissions(Ljava/util/List;Lcom/facebook/internal/SessionAuthorizationType;Lcom/facebook/Session;)Z
    .registers 6
    .param p2, "authType"    # Lcom/facebook/internal/SessionAuthorizationType;
    .param p3, "currentSession"    # Lcom/facebook/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/internal/SessionAuthorizationType;",
            "Lcom/facebook/Session;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/facebook/internal/SessionAuthorizationType;->PUBLISH:Lcom/facebook/internal/SessionAuthorizationType;

    invoke-virtual {v0, p2}, Lcom/facebook/internal/SessionAuthorizationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 122
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Permissions for publish actions cannot be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_17
    if-eqz p3, :cond_35

    invoke-virtual {p3}, Lcom/facebook/Session;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 127
    invoke-virtual {p3}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/internal/Utility;->isSubset(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 128
    # getter for: Lcom/facebook/widget/LoginButton;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/widget/LoginButton;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Cannot set additional permissions when session is already open."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v0, 0x0

    .line 132
    :goto_34
    return v0

    :cond_35
    const/4 v0, 0x1

    goto :goto_34
.end method


# virtual methods
.method public clearPermissions()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;

    .line 141
    iput-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->authorizationType:Lcom/facebook/internal/SessionAuthorizationType;

    .line 142
    return-void
.end method

.method public getDefaultAudience()Lcom/facebook/SessionDefaultAudience;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->defaultAudience:Lcom/facebook/SessionDefaultAudience;

    return-object v0
.end method

.method public getLoginBehavior()Lcom/facebook/SessionLoginBehavior;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    return-object v0
.end method

.method public getOnErrorListener()Lcom/facebook/widget/LoginButton$OnErrorListener;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->onErrorListener:Lcom/facebook/widget/LoginButton$OnErrorListener;

    return-object v0
.end method

.method getPermissions()Ljava/util/List;
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
    .line 136
    iget-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;

    return-object v0
.end method

.method public getSessionStatusCallback()Lcom/facebook/Session$StatusCallback;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->sessionStatusCallback:Lcom/facebook/Session$StatusCallback;

    return-object v0
.end method

.method public setDefaultAudience(Lcom/facebook/SessionDefaultAudience;)V
    .registers 2
    .param p1, "defaultAudience"    # Lcom/facebook/SessionDefaultAudience;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->defaultAudience:Lcom/facebook/SessionDefaultAudience;

    .line 91
    return-void
.end method

.method public setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)V
    .registers 2
    .param p1, "loginBehavior"    # Lcom/facebook/SessionLoginBehavior;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    .line 146
    return-void
.end method

.method public setOnErrorListener(Lcom/facebook/widget/LoginButton$OnErrorListener;)V
    .registers 2
    .param p1, "onErrorListener"    # Lcom/facebook/widget/LoginButton$OnErrorListener;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->onErrorListener:Lcom/facebook/widget/LoginButton$OnErrorListener;

    .line 83
    return-void
.end method

.method public setPublishPermissions(Ljava/util/List;Lcom/facebook/Session;)V
    .registers 5
    .param p2, "session"    # Lcom/facebook/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/Session;",
            ")V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/facebook/internal/SessionAuthorizationType;->READ:Lcom/facebook/internal/SessionAuthorizationType;

    iget-object v1, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->authorizationType:Lcom/facebook/internal/SessionAuthorizationType;

    invoke-virtual {v0, v1}, Lcom/facebook/internal/SessionAuthorizationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 110
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Cannot call setPublishPermissions after setReadPermissions has been called."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_13
    sget-object v0, Lcom/facebook/internal/SessionAuthorizationType;->PUBLISH:Lcom/facebook/internal/SessionAuthorizationType;

    invoke-direct {p0, p1, v0, p2}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->validatePermissions(Ljava/util/List;Lcom/facebook/internal/SessionAuthorizationType;Lcom/facebook/Session;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 114
    iput-object p1, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;

    .line 115
    sget-object v0, Lcom/facebook/internal/SessionAuthorizationType;->PUBLISH:Lcom/facebook/internal/SessionAuthorizationType;

    iput-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->authorizationType:Lcom/facebook/internal/SessionAuthorizationType;

    .line 117
    :cond_21
    return-void
.end method

.method public setReadPermissions(Ljava/util/List;Lcom/facebook/Session;)V
    .registers 5
    .param p2, "session"    # Lcom/facebook/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/Session;",
            ")V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/facebook/internal/SessionAuthorizationType;->PUBLISH:Lcom/facebook/internal/SessionAuthorizationType;

    iget-object v1, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->authorizationType:Lcom/facebook/internal/SessionAuthorizationType;

    invoke-virtual {v0, v1}, Lcom/facebook/internal/SessionAuthorizationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 99
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Cannot call setReadPermissions after setPublishPermissions has been called."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_13
    sget-object v0, Lcom/facebook/internal/SessionAuthorizationType;->READ:Lcom/facebook/internal/SessionAuthorizationType;

    invoke-direct {p0, p1, v0, p2}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->validatePermissions(Ljava/util/List;Lcom/facebook/internal/SessionAuthorizationType;Lcom/facebook/Session;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 103
    iput-object p1, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;

    .line 104
    sget-object v0, Lcom/facebook/internal/SessionAuthorizationType;->READ:Lcom/facebook/internal/SessionAuthorizationType;

    iput-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->authorizationType:Lcom/facebook/internal/SessionAuthorizationType;

    .line 106
    :cond_21
    return-void
.end method

.method public setSessionStatusCallback(Lcom/facebook/Session$StatusCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/facebook/Session$StatusCallback;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->sessionStatusCallback:Lcom/facebook/Session$StatusCallback;

    .line 154
    return-void
.end method
