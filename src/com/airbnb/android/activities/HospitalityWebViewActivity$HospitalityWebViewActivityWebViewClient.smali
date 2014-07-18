.class Lcom/airbnb/android/activities/HospitalityWebViewActivity$HospitalityWebViewActivityWebViewClient;
.super Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;
.source "HospitalityWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/activities/HospitalityWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HospitalityWebViewActivityWebViewClient"
.end annotation


# static fields
.field private static final PARAM_CALL_TO_ACTION_IDENTIFIER:Ljava/lang/String; = "cta_id"


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/HospitalityWebViewActivity;


# direct methods
.method private constructor <init>(Lcom/airbnb/android/activities/HospitalityWebViewActivity;)V
    .registers 2

    .prologue
    .line 166
    iput-object p1, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity$HospitalityWebViewActivityWebViewClient;->this$0:Lcom/airbnb/android/activities/HospitalityWebViewActivity;

    invoke-direct {p0, p1}, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;-><init>(Lcom/airbnb/android/activities/WebViewActivity;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/android/activities/HospitalityWebViewActivity;Lcom/airbnb/android/activities/HospitalityWebViewActivity$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/airbnb/android/activities/HospitalityWebViewActivity;
    .param p2, "x1"    # Lcom/airbnb/android/activities/HospitalityWebViewActivity$1;

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/airbnb/android/activities/HospitalityWebViewActivity$HospitalityWebViewActivityWebViewClient;-><init>(Lcom/airbnb/android/activities/HospitalityWebViewActivity;)V

    return-void
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 172
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 173
    iget-object v0, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity$HospitalityWebViewActivityWebViewClient;->this$0:Lcom/airbnb/android/activities/HospitalityWebViewActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/HospitalityWebViewActivity;->resetChecklist()V

    .line 174
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p2}, Lcom/airbnb/android/activities/HospitalityWebViewActivity$HospitalityWebViewActivityWebViewClient;->startsWithAirbnbUrlScheme(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 179
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "cta_id"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "callToActionIdentifier":Ljava/lang/String;
    if-eqz v0, :cond_16

    .line 181
    invoke-static {v0}, Lcom/airbnb/android/analytics/HospitalityAnalytics;->trackCtaClicked(Ljava/lang/String;)V

    .line 184
    .end local v0    # "callToActionIdentifier":Ljava/lang/String;
    :cond_16
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
