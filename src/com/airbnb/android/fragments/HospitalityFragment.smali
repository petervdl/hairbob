.class public Lcom/airbnb/android/fragments/HospitalityFragment;
.super Lcom/airbnb/android/fragments/BaseDrawerFragment;
.source "HospitalityFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/HospitalityFragment$1;,
        Lcom/airbnb/android/fragments/HospitalityFragment$HospitalityFragmentWebViewClient;
    }
.end annotation


# static fields
.field private static final DEFAULT_URL:Ljava/lang/String; = "https://m.airbnb.com/hospitality"

.field private static final TAG:Ljava/lang/String;

.field private static final mHeaders:Lcom/airbnb/android/utils/Strap;


# instance fields
.field private mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 31
    const-class v0, Lcom/airbnb/android/fragments/HospitalityFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/HospitalityFragment;->TAG:Ljava/lang/String;

    .line 33
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "Accept-Language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/HospitalityFragment;->mHeaders:Lcom/airbnb/android/utils/Strap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BaseDrawerFragment;-><init>()V

    .line 71
    return-void
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/HospitalityFragment;)Lcom/airbnb/android/views/LoaderFrame;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/HospitalityFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/airbnb/android/fragments/HospitalityFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    return-object v0
.end method

.method public static newInstance()Landroid/support/v4/app/Fragment;
    .registers 1

    .prologue
    .line 38
    new-instance v0, Lcom/airbnb/android/fragments/HospitalityFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/HospitalityFragment;-><init>()V

    return-object v0
.end method

.method private setupWebView(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled",
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 56
    iget-object v1, p0, Lcom/airbnb/android/fragments/HospitalityFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    invoke-virtual {v1}, Lcom/airbnb/android/views/LoaderFrame;->startAnimation()V

    .line 57
    const v1, 0x7f080053

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/airbnb/android/fragments/HospitalityFragment;->mWebView:Landroid/webkit/WebView;

    .line 59
    iget-object v1, p0, Lcom/airbnb/android/fragments/HospitalityFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 60
    .local v0, "webViewSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 61
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 62
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 64
    iget-object v1, p0, Lcom/airbnb/android/fragments/HospitalityFragment;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v5}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 65
    iget-object v1, p0, Lcom/airbnb/android/fragments/HospitalityFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 66
    iget-object v1, p0, Lcom/airbnb/android/fragments/HospitalityFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 67
    iget-object v1, p0, Lcom/airbnb/android/fragments/HospitalityFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/airbnb/android/fragments/HospitalityFragment$HospitalityFragmentWebViewClient;

    invoke-direct {v2, p0, v5}, Lcom/airbnb/android/fragments/HospitalityFragment$HospitalityFragmentWebViewClient;-><init>(Lcom/airbnb/android/fragments/HospitalityFragment;Lcom/airbnb/android/fragments/HospitalityFragment$1;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 68
    iget-object v1, p0, Lcom/airbnb/android/fragments/HospitalityFragment;->mWebView:Landroid/webkit/WebView;

    const-string/jumbo v2, "https://m.airbnb.com/hospitality"

    sget-object v3, Lcom/airbnb/android/fragments/HospitalityFragment;->mHeaders:Lcom/airbnb/android/utils/Strap;

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 69
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 44
    const v1, 0x7f03009e

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f080054

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/LoaderFrame;

    iput-object v1, p0, Lcom/airbnb/android/fragments/HospitalityFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    .line 48
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/HospitalityFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v1, 0x7f0801c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v3, 0x7f0200e0

    invoke-static {v2, v1, v3}, Lcom/airbnb/android/utils/MiscUtils;->setImageResource565(Landroid/content/res/Resources;Landroid/widget/ImageView;I)V

    .line 49
    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/HospitalityFragment;->setupWebView(Landroid/view/View;)V

    .line 51
    return-object v0
.end method

.method protected setupActionBar(Landroid/app/ActionBar;)V
    .registers 3
    .param p1, "actionBar"    # Landroid/app/ActionBar;

    .prologue
    .line 101
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 103
    const v0, 0x7f0e02bf

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 104
    return-void
.end method
