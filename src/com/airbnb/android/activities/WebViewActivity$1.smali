.class Lcom/airbnb/android/activities/WebViewActivity$1;
.super Landroid/webkit/WebChromeClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/WebViewActivity;->setupWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/WebViewActivity;)V
    .registers 2

    .prologue
    .line 134
    iput-object p1, p0, Lcom/airbnb/android/activities/WebViewActivity$1;->this$0:Lcom/airbnb/android/activities/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 138
    # getter for: Lcom/airbnb/android/activities/WebViewActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/airbnb/android/activities/WebViewActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onProgressChanged - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/BuildHelper;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 140
    const/16 v0, 0x64

    if-ne p2, v0, :cond_27

    .line 141
    iget-object v0, p0, Lcom/airbnb/android/activities/WebViewActivity$1;->this$0:Lcom/airbnb/android/activities/WebViewActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/WebViewActivity;->disableLoading()V

    .line 143
    :cond_27
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 147
    # getter for: Lcom/airbnb/android/activities/WebViewActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/airbnb/android/activities/WebViewActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onReceivedTitle"

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/BuildHelper;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/airbnb/android/activities/WebViewActivity$1;->this$0:Lcom/airbnb/android/activities/WebViewActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/WebViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 149
    return-void
.end method
