.class Lcom/airbnb/android/fragments/ROProfileFragment$2;
.super Ljava/lang/Object;
.source "ROProfileFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ROProfileFragment;->updateListings()V
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
.field final synthetic this$0:Lcom/airbnb/android/fragments/ROProfileFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ROProfileFragment;)V
    .registers 2

    .prologue
    .line 203
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROProfileFragment$2;->this$0:Lcom/airbnb/android/fragments/ROProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 212
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 213
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/MySpacesRequest;)V
    .registers 4
    .param p1, "response"    # Lcom/airbnb/android/requests/MySpacesRequest;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROProfileFragment$2;->this$0:Lcom/airbnb/android/fragments/ROProfileFragment;

    iget-object v1, p1, Lcom/airbnb/android/requests/MySpacesRequest;->listings:Ljava/util/ArrayList;

    # invokes: Lcom/airbnb/android/fragments/ROProfileFragment;->updateListingsHelper(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/ROProfileFragment;->access$000(Lcom/airbnb/android/fragments/ROProfileFragment;Ljava/util/List;)V

    .line 208
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 203
    check-cast p1, Lcom/airbnb/android/requests/MySpacesRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/ROProfileFragment$2;->onResponse(Lcom/airbnb/android/requests/MySpacesRequest;)V

    return-void
.end method
