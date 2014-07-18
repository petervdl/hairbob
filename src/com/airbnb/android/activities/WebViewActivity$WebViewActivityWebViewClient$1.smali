.class Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient$1;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;->goToOnlyListingForUser(Lcom/airbnb/android/models/User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/android/requests/RequestListener",
        "<",
        "Lcom/airbnb/android/requests/MySpacesRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;)V
    .registers 2

    .prologue
    .line 309
    iput-object p1, p0, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient$1;->this$1:Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient$1;->this$1:Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;

    iget-object v0, v0, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;->this$0:Lcom/airbnb/android/activities/WebViewActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/WebViewActivity;->disableLoading()V

    .line 322
    iget-object v0, p0, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient$1;->this$1:Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;

    iget-object v0, v0, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;->this$0:Lcom/airbnb/android/activities/WebViewActivity;

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 323
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/MySpacesRequest;)V
    .registers 7
    .param p1, "response"    # Lcom/airbnb/android/requests/MySpacesRequest;

    .prologue
    .line 313
    iget-object v2, p0, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient$1;->this$1:Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;

    iget-object v2, v2, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;->this$0:Lcom/airbnb/android/activities/WebViewActivity;

    invoke-virtual {v2}, Lcom/airbnb/android/activities/WebViewActivity;->disableLoading()V

    .line 314
    iget-object v2, p1, Lcom/airbnb/android/requests/MySpacesRequest;->listings:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Listing;

    .line 315
    .local v0, "firstListing":Lcom/airbnb/android/models/Listing;
    iget-object v2, p0, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient$1;->this$1:Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;

    iget-object v2, v2, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;->this$0:Lcom/airbnb/android/activities/WebViewActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/airbnb/android/activities/ManageListingActivity;->intentForState(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    .line 316
    .local v1, "manageListingIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient$1;->this$1:Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;

    iget-object v2, v2, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient;->this$0:Lcom/airbnb/android/activities/WebViewActivity;

    invoke-virtual {v2, v1}, Lcom/airbnb/android/activities/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 317
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 309
    check-cast p1, Lcom/airbnb/android/requests/MySpacesRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/activities/WebViewActivity$WebViewActivityWebViewClient$1;->onResponse(Lcom/airbnb/android/requests/MySpacesRequest;)V

    return-void
.end method
