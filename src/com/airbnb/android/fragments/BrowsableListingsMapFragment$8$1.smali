.class Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$8$1;
.super Ljava/lang/Object;
.source "BrowsableListingsMapFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$8;->onMapBoundsReady(Lcom/google/android/gms/maps/model/LatLngBounds;)V
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
        "Lcom/airbnb/android/requests/SearchRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$8;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$8;)V
    .registers 2

    .prologue
    .line 374
    iput-object p1, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$8$1;->this$1:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 385
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$8$1;->this$1:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$8;

    iget-object v0, v0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$8;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 386
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$8$1;->this$1:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$8;

    iget-object v0, v0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$8;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e06bc

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 388
    :cond_1d
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/SearchRequest;)V
    .registers 5
    .param p1, "response"    # Lcom/airbnb/android/requests/SearchRequest;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$8$1;->this$1:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$8;

    iget-object v0, v0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$8;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    iget-object v1, p1, Lcom/airbnb/android/requests/SearchRequest;->listings:Ljava/util/List;

    iget v2, p1, Lcom/airbnb/android/requests/SearchRequest;->listingsCount:I

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->setSearchData(Ljava/util/List;I)V

    .line 379
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$8$1;->this$1:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$8;

    iget-object v0, v0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$8;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    const/4 v1, 0x0

    # setter for: Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mSearchRequest:Lcom/airbnb/android/requests/SearchRequest;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->access$1002(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;Lcom/airbnb/android/requests/SearchRequest;)Lcom/airbnb/android/requests/SearchRequest;

    .line 381
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 374
    check-cast p1, Lcom/airbnb/android/requests/SearchRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$8$1;->onResponse(Lcom/airbnb/android/requests/SearchRequest;)V

    return-void
.end method
