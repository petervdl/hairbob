.class Lcom/airbnb/android/AirbnbApi$3;
.super Ljava/lang/Object;
.source "AirbnbApi.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/AirbnbApi;->fetchWishLists(Lcom/airbnb/android/requests/RequestListener;)V
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
        "Lcom/airbnb/android/requests/MyWishListsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/AirbnbApi;

.field final synthetic val$listener:Lcom/airbnb/android/requests/RequestListener;


# direct methods
.method constructor <init>(Lcom/airbnb/android/AirbnbApi;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 3

    .prologue
    .line 481
    iput-object p1, p0, Lcom/airbnb/android/AirbnbApi$3;->this$0:Lcom/airbnb/android/AirbnbApi;

    iput-object p2, p0, Lcom/airbnb/android/AirbnbApi$3;->val$listener:Lcom/airbnb/android/requests/RequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 493
    iget-object v0, p0, Lcom/airbnb/android/AirbnbApi$3;->val$listener:Lcom/airbnb/android/requests/RequestListener;

    if-eqz v0, :cond_9

    .line 494
    iget-object v0, p0, Lcom/airbnb/android/AirbnbApi$3;->val$listener:Lcom/airbnb/android/requests/RequestListener;

    invoke-interface {v0, p1}, Lcom/airbnb/android/requests/RequestListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    .line 496
    :cond_9
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/MyWishListsRequest;)V
    .registers 4
    .param p1, "response"    # Lcom/airbnb/android/requests/MyWishListsRequest;

    .prologue
    .line 485
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    iget-object v1, p1, Lcom/airbnb/android/requests/MyWishListsRequest;->collections:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/AirbnbApi;->setWishLists(Ljava/util/List;)V

    .line 486
    iget-object v0, p0, Lcom/airbnb/android/AirbnbApi$3;->val$listener:Lcom/airbnb/android/requests/RequestListener;

    if-eqz v0, :cond_12

    .line 487
    iget-object v0, p0, Lcom/airbnb/android/AirbnbApi$3;->val$listener:Lcom/airbnb/android/requests/RequestListener;

    invoke-interface {v0, p1}, Lcom/airbnb/android/requests/RequestListener;->onResponse(Ljava/lang/Object;)V

    .line 489
    :cond_12
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 481
    check-cast p1, Lcom/airbnb/android/requests/MyWishListsRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/AirbnbApi$3;->onResponse(Lcom/airbnb/android/requests/MyWishListsRequest;)V

    return-void
.end method
