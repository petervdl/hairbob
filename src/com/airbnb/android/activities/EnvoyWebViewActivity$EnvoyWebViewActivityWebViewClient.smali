.class Lcom/airbnb/android/activities/EnvoyWebViewActivity$EnvoyWebViewActivityWebViewClient;
.super Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;
.source "EnvoyWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/activities/EnvoyWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EnvoyWebViewActivityWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/EnvoyWebViewActivity;


# direct methods
.method private constructor <init>(Lcom/airbnb/android/activities/EnvoyWebViewActivity;)V
    .registers 2

    .prologue
    .line 36
    iput-object p1, p0, Lcom/airbnb/android/activities/EnvoyWebViewActivity$EnvoyWebViewActivityWebViewClient;->this$0:Lcom/airbnb/android/activities/EnvoyWebViewActivity;

    invoke-direct {p0, p1}, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;-><init>(Lcom/airbnb/android/activities/WebViewActivity;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/android/activities/EnvoyWebViewActivity;Lcom/airbnb/android/activities/EnvoyWebViewActivity$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/airbnb/android/activities/EnvoyWebViewActivity;
    .param p2, "x1"    # Lcom/airbnb/android/activities/EnvoyWebViewActivity$1;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/airbnb/android/activities/EnvoyWebViewActivity$EnvoyWebViewActivityWebViewClient;-><init>(Lcom/airbnb/android/activities/EnvoyWebViewActivity;)V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 9
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 42
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "host":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "path":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "params":Ljava/lang/String;
    if-eqz v1, :cond_21

    const-string/jumbo v4, "status=CANCELLED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 50
    iget-object v4, p0, Lcom/airbnb/android/activities/EnvoyWebViewActivity$EnvoyWebViewActivityWebViewClient;->this$0:Lcom/airbnb/android/activities/EnvoyWebViewActivity;

    const/4 v5, 0x1

    # setter for: Lcom/airbnb/android/activities/EnvoyWebViewActivity;->envoyStatusCanceled:Z
    invoke-static {v4, v5}, Lcom/airbnb/android/activities/EnvoyWebViewActivity;->access$102(Lcom/airbnb/android/activities/EnvoyWebViewActivity;Z)Z

    .line 53
    :cond_21
    if-eqz v0, :cond_4b

    const-string/jumbo v4, "airbnb"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4b

    if-eqz v2, :cond_4b

    const-string/jumbo v4, "payout_preferences"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 54
    iget-object v4, p0, Lcom/airbnb/android/activities/EnvoyWebViewActivity$EnvoyWebViewActivityWebViewClient;->this$0:Lcom/airbnb/android/activities/EnvoyWebViewActivity;

    # getter for: Lcom/airbnb/android/activities/EnvoyWebViewActivity;->envoyStatusCanceled:Z
    invoke-static {v4}, Lcom/airbnb/android/activities/EnvoyWebViewActivity;->access$100(Lcom/airbnb/android/activities/EnvoyWebViewActivity;)Z

    move-result v4

    if-nez v4, :cond_46

    .line 56
    iget-object v4, p0, Lcom/airbnb/android/activities/EnvoyWebViewActivity$EnvoyWebViewActivityWebViewClient;->this$0:Lcom/airbnb/android/activities/EnvoyWebViewActivity;

    const/16 v5, 0x1c8

    invoke-virtual {v4, v5}, Lcom/airbnb/android/activities/EnvoyWebViewActivity;->setResult(I)V

    .line 58
    :cond_46
    iget-object v4, p0, Lcom/airbnb/android/activities/EnvoyWebViewActivity$EnvoyWebViewActivityWebViewClient;->this$0:Lcom/airbnb/android/activities/EnvoyWebViewActivity;

    invoke-virtual {v4}, Lcom/airbnb/android/activities/EnvoyWebViewActivity;->finish()V

    .line 61
    :cond_4b
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v4

    return v4
.end method
