.class final Lcom/airbnb/android/utils/SignInUtil$2;
.super Ljava/lang/Object;
.source "SignInUtil.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/utils/SignInUtil;->googleCallback(Lcom/airbnb/android/utils/SignInUtil$SignInListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/android/requests/RequestListener",
        "<",
        "Lcom/airbnb/android/requests/OAuthCallbackRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$code:Ljava/lang/String;

.field final synthetic val$listener:Lcom/airbnb/android/utils/SignInUtil$SignInListener;


# direct methods
.method constructor <init>(Lcom/airbnb/android/utils/SignInUtil$SignInListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 233
    iput-object p1, p0, Lcom/airbnb/android/utils/SignInUtil$2;->val$listener:Lcom/airbnb/android/utils/SignInUtil$SignInListener;

    iput-object p2, p0, Lcom/airbnb/android/utils/SignInUtil$2;->val$code:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/airbnb/android/utils/SignInUtil$2;->val$listener:Lcom/airbnb/android/utils/SignInUtil$SignInListener;

    invoke-interface {v0}, Lcom/airbnb/android/utils/SignInUtil$SignInListener;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/utils/SignInUtil$2;->val$code:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/GoogleAuthUtil;->invalidateToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/airbnb/android/utils/SignInUtil$2;->val$listener:Lcom/airbnb/android/utils/SignInUtil$SignInListener;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/airbnb/android/utils/SignInUtil$2;->val$listener:Lcom/airbnb/android/utils/SignInUtil$SignInListener;

    invoke-interface {v0}, Lcom/airbnb/android/utils/SignInUtil$SignInListener;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 249
    iget-object v0, p0, Lcom/airbnb/android/utils/SignInUtil$2;->val$listener:Lcom/airbnb/android/utils/SignInUtil$SignInListener;

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/airbnb/android/requests/AirbnbRequest;->parseErrorMessage(Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/airbnb/android/utils/SignInUtil$SignInListener;->onCallbackResponse(ZLjava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/airbnb/android/utils/SignInUtil$2;->val$listener:Lcom/airbnb/android/utils/SignInUtil$SignInListener;

    invoke-interface {v0}, Lcom/airbnb/android/utils/SignInUtil$SignInListener;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 252
    :cond_2a
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/OAuthCallbackRequest;)V
    .registers 5
    .param p1, "response"    # Lcom/airbnb/android/requests/OAuthCallbackRequest;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/airbnb/android/utils/SignInUtil$2;->val$listener:Lcom/airbnb/android/utils/SignInUtil$SignInListener;

    invoke-interface {v0}, Lcom/airbnb/android/utils/SignInUtil$SignInListener;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/utils/SignInUtil$2;->val$code:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/GoogleAuthUtil;->invalidateToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 238
    sget-object v0, Lcom/airbnb/android/utils/SignInUtil$Service;->GOOGLE:Lcom/airbnb/android/utils/SignInUtil$Service;

    invoke-virtual {v0}, Lcom/airbnb/android/utils/SignInUtil$Service;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/airbnb/android/utils/SharedPrefsHelper;->saveSignInServiceType(I)V

    .line 240
    iget-object v0, p0, Lcom/airbnb/android/utils/SignInUtil$2;->val$listener:Lcom/airbnb/android/utils/SignInUtil$SignInListener;

    if-eqz v0, :cond_1f

    .line 241
    iget-object v0, p0, Lcom/airbnb/android/utils/SignInUtil$2;->val$listener:Lcom/airbnb/android/utils/SignInUtil$SignInListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/airbnb/android/utils/SignInUtil$SignInListener;->onCallbackResponse(ZLjava/lang/String;)V

    .line 243
    :cond_1f
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 233
    check-cast p1, Lcom/airbnb/android/requests/OAuthCallbackRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/utils/SignInUtil$2;->onResponse(Lcom/airbnb/android/requests/OAuthCallbackRequest;)V

    return-void
.end method
