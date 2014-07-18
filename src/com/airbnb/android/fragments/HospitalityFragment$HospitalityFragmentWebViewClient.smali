.class Lcom/airbnb/android/fragments/HospitalityFragment$HospitalityFragmentWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "HospitalityFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/HospitalityFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HospitalityFragmentWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/HospitalityFragment;


# direct methods
.method private constructor <init>(Lcom/airbnb/android/fragments/HospitalityFragment;)V
    .registers 2

    .prologue
    .line 71
    iput-object p1, p0, Lcom/airbnb/android/fragments/HospitalityFragment$HospitalityFragmentWebViewClient;->this$0:Lcom/airbnb/android/fragments/HospitalityFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/android/fragments/HospitalityFragment;Lcom/airbnb/android/fragments/HospitalityFragment$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/airbnb/android/fragments/HospitalityFragment;
    .param p2, "x1"    # Lcom/airbnb/android/fragments/HospitalityFragment$1;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/HospitalityFragment$HospitalityFragmentWebViewClient;-><init>(Lcom/airbnb/android/fragments/HospitalityFragment;)V

    return-void
.end method

.method private isLocaleRedirect(Ljava/lang/String;)Z
    .registers 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "newPath":Ljava/lang/String;
    const-string/jumbo v2, "https://m.airbnb.com/hospitality"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "originalPath":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/airbnb/android/fragments/HospitalityFragment$HospitalityFragmentWebViewClient;->this$0:Lcom/airbnb/android/fragments/HospitalityFragment;

    # getter for: Lcom/airbnb/android/fragments/HospitalityFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;
    invoke-static {v0}, Lcom/airbnb/android/fragments/HospitalityFragment;->access$100(Lcom/airbnb/android/fragments/HospitalityFragment;)Lcom/airbnb/android/views/LoaderFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderFrame;->finish()V

    .line 96
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0, p2}, Lcom/airbnb/android/fragments/HospitalityFragment$HospitalityFragmentWebViewClient;->isLocaleRedirect(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 75
    const/4 v1, 0x0

    .line 80
    :goto_7
    return v1

    .line 77
    :cond_8
    invoke-static {p2}, Lcom/airbnb/android/analytics/HospitalityAnalytics;->trackStandardClickedFromFragment(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/airbnb/android/activities/HospitalityWebViewActivity;->intentForUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 79
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/airbnb/android/fragments/HospitalityFragment$HospitalityFragmentWebViewClient;->this$0:Lcom/airbnb/android/fragments/HospitalityFragment;

    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/HospitalityFragment;->startActivity(Landroid/content/Intent;)V

    .line 80
    const/4 v1, 0x1

    goto :goto_7
.end method
