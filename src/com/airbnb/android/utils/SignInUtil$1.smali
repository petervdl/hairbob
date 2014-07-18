.class final Lcom/airbnb/android/utils/SignInUtil$1;
.super Ljava/lang/Object;
.source "SignInUtil.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/utils/SignInUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .registers 9
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 120
    invoke-virtual {p1}, Lcom/facebook/Session;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 121
    invoke-virtual {p1}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v0

    .line 122
    .local v0, "currentPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v2, "email"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const-string/jumbo v2, "user_birthday"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 123
    # getter for: Lcom/airbnb/android/utils/SignInUtil;->mListener:Lcom/airbnb/android/utils/SignInUtil$SignInListener;
    invoke-static {}, Lcom/airbnb/android/utils/SignInUtil;->access$000()Lcom/airbnb/android/utils/SignInUtil$SignInListener;

    move-result-object v2

    sget-object v3, Lcom/airbnb/android/utils/SignInUtil$Service;->FACEBOOK:Lcom/airbnb/android/utils/SignInUtil$Service;

    invoke-interface {v2, v3}, Lcom/airbnb/android/utils/SignInUtil$SignInListener;->onSignInSuccess(Lcom/airbnb/android/utils/SignInUtil$Service;)V

    .line 134
    .end local v0    # "currentPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_25
    :goto_25
    return-void

    .line 127
    .restart local v0    # "currentPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_26
    # getter for: Lcom/airbnb/android/utils/SignInUtil;->mListener:Lcom/airbnb/android/utils/SignInUtil$SignInListener;
    invoke-static {}, Lcom/airbnb/android/utils/SignInUtil;->access$000()Lcom/airbnb/android/utils/SignInUtil$SignInListener;

    move-result-object v2

    sget-object v3, Lcom/airbnb/android/utils/SignInUtil$Service;->FACEBOOK:Lcom/airbnb/android/utils/SignInUtil$Service;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/airbnb/android/utils/SignInUtil$SignInListener;->showRequestedPermissions(Lcom/airbnb/android/utils/SignInUtil$Service;Landroid/content/Intent;)V

    .line 128
    new-instance v1, Lcom/facebook/Session$NewPermissionsRequest;

    # getter for: Lcom/airbnb/android/utils/SignInUtil;->mListener:Lcom/airbnb/android/utils/SignInUtil$SignInListener;
    invoke-static {}, Lcom/airbnb/android/utils/SignInUtil;->access$000()Lcom/airbnb/android/utils/SignInUtil$SignInListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/airbnb/android/utils/SignInUtil$SignInListener;->getHostingActivity()Landroid/app/Activity;

    move-result-object v2

    # getter for: Lcom/airbnb/android/utils/SignInUtil;->FACEBOOK_PERMISSIONS:Ljava/util/List;
    invoke-static {}, Lcom/airbnb/android/utils/SignInUtil;->access$100()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/facebook/Session$NewPermissionsRequest;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    .line 131
    .local v1, "newPermissionsRequest":Lcom/facebook/Session$NewPermissionsRequest;
    invoke-virtual {p1, v1}, Lcom/facebook/Session;->requestNewReadPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V

    goto :goto_25
.end method
