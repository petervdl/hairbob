.class Lcom/airbnb/android/fragments/OauthFragment$OauthWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "OauthFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/OauthFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OauthWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/OauthFragment;


# direct methods
.method private constructor <init>(Lcom/airbnb/android/fragments/OauthFragment;)V
    .registers 2

    .prologue
    .line 216
    iput-object p1, p0, Lcom/airbnb/android/fragments/OauthFragment$OauthWebViewClient;->this$0:Lcom/airbnb/android/fragments/OauthFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/android/fragments/OauthFragment;Lcom/airbnb/android/fragments/OauthFragment$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/airbnb/android/fragments/OauthFragment;
    .param p2, "x1"    # Lcom/airbnb/android/fragments/OauthFragment$1;

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/OauthFragment$OauthWebViewClient;-><init>(Lcom/airbnb/android/fragments/OauthFragment;)V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 9
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 219
    iget-object v4, p0, Lcom/airbnb/android/fragments/OauthFragment$OauthWebViewClient;->this$0:Lcom/airbnb/android/fragments/OauthFragment;

    # getter for: Lcom/airbnb/android/fragments/OauthFragment;->serviceRedirectURI:Ljava/lang/String;
    invoke-static {v4}, Lcom/airbnb/android/fragments/OauthFragment;->access$100(Lcom/airbnb/android/fragments/OauthFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_56

    .line 220
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 222
    .local v3, "uri":Landroid/net/Uri;
    const-string/jumbo v4, "state"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, "paramState":Ljava/lang/String;
    const-string/jumbo v4, "error"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "paramError":Ljava/lang/String;
    const-string/jumbo v4, "code"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "paramCode":Ljava/lang/String;
    iget-object v4, p0, Lcom/airbnb/android/fragments/OauthFragment$OauthWebViewClient;->this$0:Lcom/airbnb/android/fragments/OauthFragment;

    # getter for: Lcom/airbnb/android/fragments/OauthFragment;->state:Ljava/lang/String;
    invoke-static {v4}, Lcom/airbnb/android/fragments/OauthFragment;->access$200(Lcom/airbnb/android/fragments/OauthFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    if-eqz v0, :cond_3a

    .line 227
    iget-object v4, p0, Lcom/airbnb/android/fragments/OauthFragment$OauthWebViewClient;->this$0:Lcom/airbnb/android/fragments/OauthFragment;

    # invokes: Lcom/airbnb/android/fragments/OauthFragment;->callback(Ljava/lang/String;)V
    invoke-static {v4, v0}, Lcom/airbnb/android/fragments/OauthFragment;->access$300(Lcom/airbnb/android/fragments/OauthFragment;Ljava/lang/String;)V

    .line 234
    :goto_38
    const/4 v4, 0x1

    .line 237
    .end local v0    # "paramCode":Ljava/lang/String;
    .end local v1    # "paramError":Ljava/lang/String;
    .end local v2    # "paramState":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_39
    return v4

    .line 228
    .restart local v0    # "paramCode":Ljava/lang/String;
    .restart local v1    # "paramError":Ljava/lang/String;
    .restart local v2    # "paramState":Ljava/lang/String;
    .restart local v3    # "uri":Landroid/net/Uri;
    :cond_3a
    const-string/jumbo v4, "access_denied"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 229
    iget-object v4, p0, Lcom/airbnb/android/fragments/OauthFragment$OauthWebViewClient;->this$0:Lcom/airbnb/android/fragments/OauthFragment;

    invoke-virtual {v4}, Lcom/airbnb/android/fragments/OauthFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_38

    .line 231
    :cond_4d
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v5, "Error when parsing callback"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_38

    .line 236
    .end local v0    # "paramCode":Ljava/lang/String;
    .end local v1    # "paramError":Ljava/lang/String;
    .end local v2    # "paramState":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_56
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 237
    const/4 v4, 0x0

    goto :goto_39
.end method
