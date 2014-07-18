.class Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$8;
.super Ljava/lang/Object;
.source "BrowsableListingsMapFragment.java"

# interfaces
.implements Lcom/airbnb/android/views/AirMapView$OnMapBoundsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->requestNewSearchResults()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;)V
    .registers 2

    .prologue
    .line 366
    iput-object p1, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$8;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapBoundsReady(Lcom/google/android/gms/maps/model/LatLngBounds;)V
    .registers 7
    .param p1, "bounds"    # Lcom/google/android/gms/maps/model/LatLngBounds;

    .prologue
    .line 370
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApplication;->getSearchInfo()Lcom/airbnb/android/models/SearchInfo;

    move-result-object v1

    .line 371
    .local v1, "searchInfo":Lcom/airbnb/android/models/SearchInfo;
    iget-object v2, p1, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v1, v2}, Lcom/airbnb/android/models/SearchInfo;->setSWCorner(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 372
    iget-object v2, p1, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v1, v2}, Lcom/airbnb/android/models/SearchInfo;->setNECorner(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 374
    new-instance v0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$8$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$8$1;-><init>(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$8;)V

    .line 392
    .local v0, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/SearchRequest;>;"
    iget-object v2, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$8;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    new-instance v3, Lcom/airbnb/android/requests/SearchRequest;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v0}, Lcom/airbnb/android/requests/SearchRequest;-><init>(Lcom/airbnb/android/models/SearchInfo;ILcom/airbnb/android/requests/RequestListener;)V

    # setter for: Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mSearchRequest:Lcom/airbnb/android/requests/SearchRequest;
    invoke-static {v2, v3}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->access$1002(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;Lcom/airbnb/android/requests/SearchRequest;)Lcom/airbnb/android/requests/SearchRequest;

    .line 393
    iget-object v2, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$8;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    # getter for: Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mSearchRequest:Lcom/airbnb/android/requests/SearchRequest;
    invoke-static {v2}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->access$1000(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;)Lcom/airbnb/android/requests/SearchRequest;

    move-result-object v2

    const-string/jumbo v3, "search_request_tag"

    invoke-virtual {v2, v3}, Lcom/airbnb/android/requests/SearchRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 394
    iget-object v2, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$8;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    # getter for: Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mSearchRequest:Lcom/airbnb/android/requests/SearchRequest;
    invoke-static {v2}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->access$1000(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;)Lcom/airbnb/android/requests/SearchRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/requests/SearchRequest;->execute()V

    .line 395
    return-void
.end method
