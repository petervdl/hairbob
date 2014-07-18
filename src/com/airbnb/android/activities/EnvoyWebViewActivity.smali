.class public Lcom/airbnb/android/activities/EnvoyWebViewActivity;
.super Lcom/airbnb/android/activities/WebViewActivity;
.source "EnvoyWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/activities/EnvoyWebViewActivity$1;,
        Lcom/airbnb/android/activities/EnvoyWebViewActivity$EnvoyWebViewActivityWebViewClient;
    }
.end annotation


# static fields
.field private static final ENVOY_CANCELLED_PARAM:Ljava/lang/String; = "status=CANCELLED"

.field private static final ENVOY_COMPLETE_URL_HOST:Ljava/lang/String; = "airbnb"

.field private static final ENVOY_COMPLETE_URL_PATH:Ljava/lang/String; = "payout_preferences"


# instance fields
.field private envoyStatusCanceled:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/airbnb/android/activities/WebViewActivity;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/activities/EnvoyWebViewActivity;->envoyStatusCanceled:Z

    .line 36
    return-void
.end method

.method static synthetic access$100(Lcom/airbnb/android/activities/EnvoyWebViewActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/EnvoyWebViewActivity;

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/airbnb/android/activities/EnvoyWebViewActivity;->envoyStatusCanceled:Z

    return v0
.end method

.method static synthetic access$102(Lcom/airbnb/android/activities/EnvoyWebViewActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/EnvoyWebViewActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/airbnb/android/activities/EnvoyWebViewActivity;->envoyStatusCanceled:Z

    return p1
.end method

.method public static intentForEnvoyPayout(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 24
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/EnvoyWebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    const-string/jumbo v1, "http_post"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 27
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/WebViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    iget-object v0, p0, Lcom/airbnb/android/activities/EnvoyWebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/airbnb/android/activities/EnvoyWebViewActivity$EnvoyWebViewActivityWebViewClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/airbnb/android/activities/EnvoyWebViewActivity$EnvoyWebViewActivityWebViewClient;-><init>(Lcom/airbnb/android/activities/EnvoyWebViewActivity;Lcom/airbnb/android/activities/EnvoyWebViewActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 34
    return-void
.end method
