.class Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient$2;
.super Lcom/airbnb/android/requests/MySpacesRequest;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;->goToOnlyListingForUser(Lcom/airbnb/android/models/User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;Ljava/lang/String;ZLcom/airbnb/android/requests/RequestListener;)V
    .registers 5
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Z

    .prologue
    .line 324
    .local p4, "x2":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/MySpacesRequest;>;"
    iput-object p1, p0, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient$2;->this$1:Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;

    invoke-direct {p0, p2, p3, p4}, Lcom/airbnb/android/requests/MySpacesRequest;-><init>(Ljava/lang/String;ZLcom/airbnb/android/requests/RequestListener;)V

    return-void
.end method


# virtual methods
.method public getReturnStrategy()Lcom/android/volley/Request$ReturnStrategy;
    .registers 2

    .prologue
    .line 327
    sget-object v0, Lcom/android/volley/Request$ReturnStrategy;->NETWORK_IF_NO_CACHE:Lcom/android/volley/Request$ReturnStrategy;

    return-object v0
.end method
