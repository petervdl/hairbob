.class public Lcom/airbnb/android/activities/WebViewActivity;
.super Lcom/airbnb/android/activities/AirActivity;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;
    }
.end annotation


# static fields
.field private static final BACKUP_KEY:Ljava/lang/String; = "backup"

.field private static final BODY_KEY:Ljava/lang/String; = "body"

.field private static final DEFAULT_HEADERS:Lcom/airbnb/android/utils/Strap;

.field protected static final HTTP_POST:Ljava/lang/String; = "http_post"

.field private static final TAG:Ljava/lang/String;

.field private static final TITLE_KEY:Ljava/lang/String; = "title"

.field protected static final URL_KEY:Ljava/lang/String; = "url"


# instance fields
.field protected mBody:Ljava/lang/String;

.field private mIsPostRequest:Z

.field protected mLoader:Lcom/airbnb/android/views/LoaderFrame;

.field private mLoginHeaders:Lcom/airbnb/android/utils/Strap;

.field protected mUrl:Ljava/lang/String;

.field protected mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 43
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "Accept-Language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/activities/WebViewActivity;->DEFAULT_HEADERS:Lcom/airbnb/android/utils/Strap;

    .line 50
    const-class v0, Lcom/airbnb/android/activities/WebViewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/activities/WebViewActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/airbnb/android/activities/AirActivity;-><init>()V

    .line 217
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/airbnb/android/activities/WebViewActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/activities/WebViewActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/airbnb/android/activities/WebViewActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/activities/WebViewActivity;->loadUrlWithHeadersIfNeeded(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static addBackupIntent(Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 3
    .param p0, "webViewActivityIntent"    # Landroid/content/Intent;
    .param p1, "offlineLaunchActivity"    # Landroid/content/Intent;

    .prologue
    .line 81
    const-string/jumbo v0, "backup"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 82
    return-object p0
.end method

.method public static intentForBodyAndTitle(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "title"    # I

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/WebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "body"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    return-object v0
.end method

.method public static intentForUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/airbnb/android/activities/WebViewActivity;->intentForUrlAndTitle(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static intentForUrlAndTitle(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "title"    # I

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/WebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    return-object v0
.end method

.method private loadUrlWithHeadersIfNeeded(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;

    .prologue
    .line 192
    if-eqz p2, :cond_2b

    .line 193
    invoke-static {}, Lcom/airbnb/android/persist/DomainStore;->getInstance()Lcom/airbnb/android/persist/DomainStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/persist/DomainStore;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Domain;

    .line 194
    .local v0, "domain":Lcom/airbnb/android/models/Domain;
    invoke-direct {p0, p2, v0}, Lcom/airbnb/android/activities/WebViewActivity;->matchesDomain(Ljava/lang/String;Lcom/airbnb/android/models/Domain;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 195
    iget-boolean v2, p0, Lcom/airbnb/android/activities/WebViewActivity;->mIsPostRequest:Z

    if-nez v2, :cond_e

    .line 196
    iget-object v2, p0, Lcom/airbnb/android/activities/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/airbnb/android/activities/WebViewActivity;->mLoginHeaders:Lcom/airbnb/android/utils/Strap;

    invoke-virtual {v2, p1, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 202
    .end local v0    # "domain":Lcom/airbnb/android/models/Domain;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2b
    return-void
.end method

.method private matchesDomain(Ljava/lang/String;Lcom/airbnb/android/models/Domain;)Z
    .registers 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "domain"    # Lcom/airbnb/android/models/Domain;

    .prologue
    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/airbnb/android/models/Domain;->getDomainName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setUserAgentAndTokenHeaderIfNeeded()V
    .registers 8

    .prologue
    .line 174
    iget-object v5, p0, Lcom/airbnb/android/activities/WebViewActivity;->mUrl:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 175
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "host":Ljava/lang/String;
    if-eqz v1, :cond_51

    .line 177
    invoke-static {}, Lcom/airbnb/android/persist/DomainStore;->getInstance()Lcom/airbnb/android/persist/DomainStore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/android/persist/DomainStore;->getData()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Domain;

    .line 178
    .local v0, "domain":Lcom/airbnb/android/models/Domain;
    invoke-direct {p0, v1, v0}, Lcom/airbnb/android/activities/WebViewActivity;->matchesDomain(Ljava/lang/String;Lcom/airbnb/android/models/Domain;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 179
    invoke-static {p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/android/AirbnbApi;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, "token":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_40

    .line 181
    iget-object v5, p0, Lcom/airbnb/android/activities/WebViewActivity;->mLoginHeaders:Lcom/airbnb/android/utils/Strap;

    const-string/jumbo v6, "X-Airbnb-OAuth-Token"

    invoke-virtual {v5, v6, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    .line 183
    :cond_40
    iget-object v5, p0, Lcom/airbnb/android/activities/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v6

    invoke-virtual {v6}, Lcom/airbnb/android/AirbnbApi;->getUserAgent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 189
    .end local v0    # "domain":Lcom/airbnb/android/models/Domain;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "token":Ljava/lang/String;
    :cond_51
    return-void
.end method

.method private setupWebView()V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 109
    const v1, 0x7f080054

    invoke-virtual {p0, v1}, Lcom/airbnb/android/activities/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/LoaderFrame;

    iput-object v1, p0, Lcom/airbnb/android/activities/WebViewActivity;->mLoader:Lcom/airbnb/android/views/LoaderFrame;

    .line 110
    const v1, 0x7f080053

    invoke-virtual {p0, v1}, Lcom/airbnb/android/activities/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/airbnb/android/activities/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    .line 112
    iget-object v1, p0, Lcom/airbnb/android/activities/WebViewActivity;->mBody:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 113
    iget-object v1, p0, Lcom/airbnb/android/activities/WebViewActivity;->mLoader:Lcom/airbnb/android/views/LoaderFrame;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/LoaderFrame;->setVisibility(I)V

    .line 114
    iget-object v1, p0, Lcom/airbnb/android/activities/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/airbnb/android/activities/WebViewActivity;->mBody:Ljava/lang/String;

    const-string/jumbo v3, "text/html"

    invoke-virtual {v1, v2, v3, v5}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :goto_32
    return-void

    .line 118
    :cond_33
    invoke-virtual {p0}, Lcom/airbnb/android/activities/WebViewActivity;->enableLoading()V

    .line 121
    iget-object v1, p0, Lcom/airbnb/android/activities/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v5}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 122
    iget-object v1, p0, Lcom/airbnb/android/activities/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 123
    iget-object v1, p0, Lcom/airbnb/android/activities/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 124
    .local v0, "webViewSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 125
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 126
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 127
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 128
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 130
    iget-object v1, p0, Lcom/airbnb/android/activities/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 132
    iget-object v1, p0, Lcom/airbnb/android/activities/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;

    invoke-direct {v2, p0}, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;-><init>(Lcom/airbnb/android/activities/WebViewActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 134
    iget-object v1, p0, Lcom/airbnb/android/activities/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/airbnb/android/activities/WebViewActivity$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/activities/WebViewActivity$1;-><init>(Lcom/airbnb/android/activities/WebViewActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 151
    sget-object v1, Lcom/airbnb/android/activities/WebViewActivity;->DEFAULT_HEADERS:Lcom/airbnb/android/utils/Strap;

    invoke-virtual {v1}, Lcom/airbnb/android/utils/Strap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/utils/Strap;

    iput-object v1, p0, Lcom/airbnb/android/activities/WebViewActivity;->mLoginHeaders:Lcom/airbnb/android/utils/Strap;

    .line 153
    invoke-direct {p0}, Lcom/airbnb/android/activities/WebViewActivity;->setUserAgentAndTokenHeaderIfNeeded()V

    .line 155
    invoke-virtual {p0}, Lcom/airbnb/android/activities/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "http_post"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/airbnb/android/activities/WebViewActivity;->mIsPostRequest:Z

    .line 156
    iget-boolean v1, p0, Lcom/airbnb/android/activities/WebViewActivity;->mIsPostRequest:Z

    if-eqz v1, :cond_9d

    .line 157
    iget-object v1, p0, Lcom/airbnb/android/activities/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/airbnb/android/activities/WebViewActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    goto :goto_32

    .line 159
    :cond_9d
    iget-object v1, p0, Lcom/airbnb/android/activities/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/airbnb/android/activities/WebViewActivity;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/airbnb/android/activities/WebViewActivity;->mLoginHeaders:Lcom/airbnb/android/utils/Strap;

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_32
.end method


# virtual methods
.method protected disableLoading()V
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/airbnb/android/activities/WebViewActivity;->mLoader:Lcom/airbnb/android/views/LoaderFrame;

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderFrame;->finish()V

    .line 170
    return-void
.end method

.method protected enableLoading()V
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/airbnb/android/activities/WebViewActivity;->mLoader:Lcom/airbnb/android/views/LoaderFrame;

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderFrame;->startAnimation()V

    .line 166
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/airbnb/android/activities/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 101
    iget-object v0, p0, Lcom/airbnb/android/activities/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 105
    :goto_e
    return-void

    .line 103
    :cond_f
    invoke-super {p0}, Lcom/airbnb/android/activities/AirActivity;->onBackPressed()V

    goto :goto_e
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/AirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/WebViewActivity;->setContentView(I)V

    .line 90
    invoke-virtual {p0}, Lcom/airbnb/android/activities/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/activities/WebViewActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    .line 92
    invoke-virtual {p0}, Lcom/airbnb/android/activities/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/activities/WebViewActivity;->mUrl:Ljava/lang/String;

    .line 93
    invoke-virtual {p0}, Lcom/airbnb/android/activities/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "body"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/activities/WebViewActivity;->mBody:Ljava/lang/String;

    .line 95
    invoke-direct {p0}, Lcom/airbnb/android/activities/WebViewActivity;->setupWebView()V

    .line 96
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 210
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 211
    invoke-virtual {p0}, Lcom/airbnb/android/activities/WebViewActivity;->finish()V

    .line 212
    const/4 v0, 0x1

    .line 214
    :goto_d
    return v0

    :cond_e
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/AirActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_d
.end method
