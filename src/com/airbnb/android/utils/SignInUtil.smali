.class public Lcom/airbnb/android/utils/SignInUtil;
.super Ljava/lang/Object;
.source "SignInUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/utils/SignInUtil$SignInListener;,
        Lcom/airbnb/android/utils/SignInUtil$Service;
    }
.end annotation


# static fields
.field private static final FACEBOOK_PERMISSIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FACEBOOK_SESSION_RESULT_CODE:I = 0xface

.field public static final GPLUS_SCOPES:[Ljava/lang/String;

.field public static final GPLUS_VISIBLE_ACTIVITY:[Ljava/lang/String;

.field public static final REQUEST_CODE_GPLUS_PERMISSIONS:I = 0x3e9

.field public static final REQUEST_CODE_GPLUS_SIGN_IN:I = 0x2bd

.field public static final TAG:Ljava/lang/String;

.field private static final URL_GOOGLE_TOKEN_INFO:Ljava/lang/String; = "https://www.googleapis.com/oauth2/v1/tokeninfo?access_token="

.field private static mFacebookCallback:Lcom/facebook/Session$StatusCallback;

.field private static mListener:Lcom/airbnb/android/utils/SignInUtil$SignInListener;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    const-class v0, Lcom/airbnb/android/utils/SignInUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/utils/SignInUtil;->TAG:Ljava/lang/String;

    .line 48
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "https://www.googleapis.com/auth/plus.login"

    aput-object v1, v0, v2

    const-string/jumbo v1, "https://www.googleapis.com/auth/userinfo.email"

    aput-object v1, v0, v3

    const-string/jumbo v1, "https://www.googleapis.com/auth/userinfo.profile"

    aput-object v1, v0, v4

    const-string/jumbo v1, "https://www.google.com/m8/feeds"

    aput-object v1, v0, v5

    const-string/jumbo v1, "https://www.googleapis.com/auth/drive.metadata.readonly"

    aput-object v1, v0, v6

    sput-object v0, Lcom/airbnb/android/utils/SignInUtil;->GPLUS_SCOPES:[Ljava/lang/String;

    .line 55
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "http://schemas.google.com/AddActivity"

    aput-object v1, v0, v2

    sput-object v0, Lcom/airbnb/android/utils/SignInUtil;->GPLUS_VISIBLE_ACTIVITY:[Ljava/lang/String;

    .line 112
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "email"

    aput-object v1, v0, v2

    const-string/jumbo v1, "user_friends"

    aput-object v1, v0, v3

    const-string/jumbo v1, "user_activities"

    aput-object v1, v0, v4

    const-string/jumbo v1, "user_birthday"

    aput-object v1, v0, v5

    const-string/jumbo v1, "user_education_history"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string/jumbo v2, "user_hometown"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "user_interests"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "user_likes"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "user_location"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/utils/SignInUtil;->FACEBOOK_PERMISSIONS:Ljava/util/List;

    .line 116
    new-instance v0, Lcom/airbnb/android/utils/SignInUtil$1;

    invoke-direct {v0}, Lcom/airbnb/android/utils/SignInUtil$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/utils/SignInUtil;->mFacebookCallback:Lcom/facebook/Session$StatusCallback;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method static synthetic access$000()Lcom/airbnb/android/utils/SignInUtil$SignInListener;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/airbnb/android/utils/SignInUtil;->mListener:Lcom/airbnb/android/utils/SignInUtil$SignInListener;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/List;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/airbnb/android/utils/SignInUtil;->FACEBOOK_PERMISSIONS:Ljava/util/List;

    return-object v0
.end method

.method public static googleCallback(Lcom/airbnb/android/utils/SignInUtil$SignInListener;Ljava/lang/String;)V
    .registers 5
    .param p0, "listener"    # Lcom/airbnb/android/utils/SignInUtil$SignInListener;
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 233
    const-string/jumbo v1, "google"

    new-instance v2, Lcom/airbnb/android/utils/SignInUtil$2;

    invoke-direct {v2, p0, p1}, Lcom/airbnb/android/utils/SignInUtil$2;-><init>(Lcom/airbnb/android/utils/SignInUtil$SignInListener;Ljava/lang/String;)V

    invoke-static {p1, v1, v2}, Lcom/airbnb/android/requests/OAuthCallbackRequest;->oauthCallbackServerRequest(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/OAuthCallbackRequest;

    move-result-object v0

    .line 254
    .local v0, "request":Lcom/airbnb/android/requests/OAuthCallbackRequest;
    invoke-virtual {v0}, Lcom/airbnb/android/requests/OAuthCallbackRequest;->execute()V

    .line 255
    return-void
.end method

.method private static isGoogleTokenValid(Ljava/lang/String;)Z
    .registers 7
    .param p0, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;,
            Landroid/net/ParseException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 274
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 275
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "https://www.googleapis.com/oauth2/v1/tokeninfo?access_token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 276
    .local v1, "get":Lorg/apache/http/client/methods/HttpGet;
    instance-of v4, v0, Lorg/apache/http/client/HttpClient;

    if-nez v4, :cond_3f

    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 277
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .local v3, "response":Lorg/apache/http/HttpResponse;
    :goto_26
    new-instance v4, Lorg/json/JSONObject;

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 278
    .local v2, "jsonResponse":Lorg/json/JSONObject;
    const-string/jumbo v4, "error"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_46

    const/4 v4, 0x1

    :goto_3e
    return v4

    .line 276
    .end local v2    # "jsonResponse":Lorg/json/JSONObject;
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    :cond_3f
    check-cast v0, Lorg/apache/http/client/HttpClient;

    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    goto :goto_26

    .line 278
    .restart local v2    # "jsonResponse":Lorg/json/JSONObject;
    .restart local v3    # "response":Lorg/apache/http/HttpResponse;
    :cond_46
    const/4 v4, 0x0

    goto :goto_3e
.end method

.method public static signInToFacebook(Lcom/airbnb/android/utils/SignInUtil$SignInListener;)V
    .registers 5
    .param p0, "listener"    # Lcom/airbnb/android/utils/SignInUtil$SignInListener;

    .prologue
    .line 147
    sput-object p0, Lcom/airbnb/android/utils/SignInUtil;->mListener:Lcom/airbnb/android/utils/SignInUtil$SignInListener;

    .line 151
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 153
    .local v0, "session":Lcom/facebook/Session;
    if-nez v0, :cond_37

    .line 154
    new-instance v0, Lcom/facebook/Session;

    .end local v0    # "session":Lcom/facebook/Session;
    sget-object v1, Lcom/airbnb/android/utils/SignInUtil;->mListener:Lcom/airbnb/android/utils/SignInUtil$SignInListener;

    invoke-interface {v1}, Lcom/airbnb/android/utils/SignInUtil$SignInListener;->getHostingActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/Session;-><init>(Landroid/content/Context;)V

    .line 155
    .restart local v0    # "session":Lcom/facebook/Session;
    invoke-static {v0}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 157
    invoke-virtual {v0}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v1

    sget-object v2, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    invoke-virtual {v1, v2}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 158
    new-instance v1, Lcom/facebook/Session$OpenRequest;

    sget-object v2, Lcom/airbnb/android/utils/SignInUtil;->mListener:Lcom/airbnb/android/utils/SignInUtil$SignInListener;

    invoke-interface {v2}, Lcom/airbnb/android/utils/SignInUtil$SignInListener;->getHostingActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    sget-object v2, Lcom/airbnb/android/utils/SignInUtil;->mFacebookCallback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v1, v2}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    .line 169
    :goto_36
    return-void

    .line 163
    :cond_37
    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-nez v1, :cond_58

    invoke-virtual {v0}, Lcom/facebook/Session;->isClosed()Z

    move-result v1

    if-nez v1, :cond_58

    .line 165
    new-instance v1, Lcom/facebook/Session$OpenRequest;

    sget-object v2, Lcom/airbnb/android/utils/SignInUtil;->mListener:Lcom/airbnb/android/utils/SignInUtil$SignInListener;

    invoke-interface {v2}, Lcom/airbnb/android/utils/SignInUtil$SignInListener;->getHostingActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    sget-object v2, Lcom/airbnb/android/utils/SignInUtil;->mFacebookCallback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v1, v2}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    goto :goto_36

    .line 167
    :cond_58
    sget-object v1, Lcom/airbnb/android/utils/SignInUtil;->mListener:Lcom/airbnb/android/utils/SignInUtil$SignInListener;

    invoke-interface {v1}, Lcom/airbnb/android/utils/SignInUtil$SignInListener;->getHostingActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    sget-object v3, Lcom/airbnb/android/utils/SignInUtil;->mFacebookCallback:Lcom/facebook/Session$StatusCallback;

    invoke-static {v1, v2, v3}, Lcom/facebook/Session;->openActiveSession(Landroid/app/Activity;ZLcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;

    goto :goto_36
.end method

.method public static signIntoGooglePlus(Lcom/airbnb/android/utils/SignInUtil$SignInListener;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 10
    .param p0, "listener"    # Lcom/airbnb/android/utils/SignInUtil$SignInListener;
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "forCallback"    # Z

    .prologue
    .line 219
    invoke-interface {p0}, Lcom/airbnb/android/utils/SignInUtil$SignInListener;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0216

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "clientId":Ljava/lang/String;
    const-string/jumbo v2, "oauth2:server:client_id:%s:api_scope:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, " "

    sget-object v6, Lcom/airbnb/android/utils/SignInUtil;->GPLUS_SCOPES:[Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "googleScopeString":Ljava/lang/String;
    invoke-static {p0, p1, v1, p2}, Lcom/airbnb/android/utils/SignInUtil;->signIntoGoogleWithScopes(Lcom/airbnb/android/utils/SignInUtil$SignInListener;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static signIntoGoogleWithScopes(Lcom/airbnb/android/utils/SignInUtil$SignInListener;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 10
    .param p0, "listener"    # Lcom/airbnb/android/utils/SignInUtil$SignInListener;
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "scope"    # Ljava/lang/String;
    .param p3, "forCallback"    # Z

    .prologue
    .line 187
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 188
    .local v1, "options":Landroid/os/Bundle;
    invoke-interface {p0}, Lcom/airbnb/android/utils/SignInUtil$SignInListener;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1, p2, v1}, Lcom/google/android/gms/auth/GoogleAuthUtil;->getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "token":Ljava/lang/String;
    if-eqz v2, :cond_22

    if-nez p3, :cond_22

    invoke-static {v2}, Lcom/airbnb/android/utils/SignInUtil;->isGoogleTokenValid(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_22

    .line 190
    invoke-interface {p0}, Lcom/airbnb/android/utils/SignInUtil$SignInListener;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/google/android/gms/auth/GoogleAuthUtil;->invalidateToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 191
    invoke-static {p0, p1, p2, p3}, Lcom/airbnb/android/utils/SignInUtil;->signIntoGoogleWithScopes(Lcom/airbnb/android/utils/SignInUtil$SignInListener;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_21
    .catch Lcom/google/android/gms/auth/UserRecoverableAuthException; {:try_start_0 .. :try_end_21} :catch_23
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_21} :catch_31
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_0 .. :try_end_21} :catch_38
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_21} :catch_3f
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_21} :catch_46

    move-result-object v2

    .line 212
    .end local v1    # "options":Landroid/os/Bundle;
    .end local v2    # "token":Ljava/lang/String;
    :cond_22
    :goto_22
    return-object v2

    .line 194
    :catch_23
    move-exception v3

    .line 196
    .local v3, "userAuthEx":Lcom/google/android/gms/auth/UserRecoverableAuthException;
    if-eqz p0, :cond_2f

    .line 197
    sget-object v4, Lcom/airbnb/android/utils/SignInUtil$Service;->GOOGLE:Lcom/airbnb/android/utils/SignInUtil$Service;

    invoke-virtual {v3}, Lcom/google/android/gms/auth/UserRecoverableAuthException;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-interface {p0, v4, v5}, Lcom/airbnb/android/utils/SignInUtil$SignInListener;->showRequestedPermissions(Lcom/airbnb/android/utils/SignInUtil$Service;Landroid/content/Intent;)V

    .line 212
    .end local v3    # "userAuthEx":Lcom/google/android/gms/auth/UserRecoverableAuthException;
    :cond_2f
    :goto_2f
    const/4 v2, 0x0

    goto :goto_22

    .line 199
    :catch_31
    move-exception v0

    .line 201
    .local v0, "e":Ljava/io/IOException;
    if-eqz p0, :cond_2f

    .line 202
    invoke-interface {p0}, Lcom/airbnb/android/utils/SignInUtil$SignInListener;->onSignInError()V

    goto :goto_2f

    .line 204
    .end local v0    # "e":Ljava/io/IOException;
    :catch_38
    move-exception v0

    .line 205
    .local v0, "e":Lcom/google/android/gms/auth/GoogleAuthException;
    sget-object v4, Lcom/airbnb/android/utils/SignInUtil;->TAG:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f

    .line 206
    .end local v0    # "e":Lcom/google/android/gms/auth/GoogleAuthException;
    :catch_3f
    move-exception v0

    .line 207
    .local v0, "e":Landroid/net/ParseException;
    sget-object v4, Lcom/airbnb/android/utils/SignInUtil;->TAG:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f

    .line 208
    .end local v0    # "e":Landroid/net/ParseException;
    :catch_46
    move-exception v0

    .line 209
    .local v0, "e":Lorg/json/JSONException;
    sget-object v4, Lcom/airbnb/android/utils/SignInUtil;->TAG:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f
.end method
