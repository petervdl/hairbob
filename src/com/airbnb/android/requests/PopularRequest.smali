.class public Lcom/airbnb/android/requests/PopularRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "PopularRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/requests/PopularRequest$PopularItem;,
        Lcom/airbnb/android/requests/PopularRequest$PopularItemWrapper;,
        Lcom/airbnb/android/requests/PopularRequest$ItemType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/PopularRequest;",
        ">;"
    }
.end annotation


# static fields
.field public static final LISTINGS_PER_FETCH:I = 0xa

.field private static final TYPES_QUERY_PARAM_KEY:Ljava/lang/String; = "types_to_support"

.field private static final TYPES_QUERY_PARAM_SEPARATOR:Ljava/lang/String; = ","


# instance fields
.field private items:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "feed_items"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/requests/PopularRequest$PopularItemWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public popularItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/interfaces/FeedItem;",
            ">;"
        }
    .end annotation
.end field

.field public serverOffsetParams:Lcom/airbnb/android/utils/Strap;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "feed_query_params"
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILcom/airbnb/android/utils/Strap;Landroid/location/Location;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 8
    .param p1, "offset"    # I
    .param p2, "itemsPerPage"    # I
    .param p3, "serverOffsetParams"    # Lcom/airbnb/android/utils/Strap;
    .param p4, "lastKnownLocation"    # Landroid/location/Location;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/airbnb/android/utils/Strap;",
            "Landroid/location/Location;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/PopularRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p5, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/PopularRequest;>;"
    const-string/jumbo v0, "activity/popular_mobile_v3"

    invoke-static {p1, p2, p3, p4}, Lcom/airbnb/android/requests/PopularRequest;->buildStrap(IILcom/airbnb/android/utils/Strap;Landroid/location/Location;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-direct {p0, v0, v1, p5}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 64
    return-void
.end method

.method public constructor <init>(ILcom/airbnb/android/requests/RequestListener;)V
    .registers 9
    .param p1, "listingsToFetch"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/PopularRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/PopularRequest;>;"
    const/4 v3, 0x0

    .line 67
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v4, v3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/requests/PopularRequest;-><init>(IILcom/airbnb/android/utils/Strap;Landroid/location/Location;Lcom/airbnb/android/requests/RequestListener;)V

    .line 68
    return-void
.end method

.method private static buildStrap(IILcom/airbnb/android/utils/Strap;Landroid/location/Location;)Lcom/airbnb/android/utils/Strap;
    .registers 14
    .param p0, "offset"    # I
    .param p1, "itemsPerPage"    # I
    .param p2, "serverOffsetParams"    # Lcom/airbnb/android/utils/Strap;
    .param p3, "lastLocation"    # Landroid/location/Location;

    .prologue
    .line 138
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v7

    const-string/jumbo v8, "offset"

    invoke-virtual {v7, v8, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;I)Lcom/airbnb/android/utils/Strap;

    move-result-object v7

    const-string/jumbo v8, "items_per_page"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    .line 142
    .local v3, "strap":Lcom/airbnb/android/utils/Strap;
    if-eqz p2, :cond_1b

    .line 143
    invoke-virtual {v3, p2}, Lcom/airbnb/android/utils/Strap;->mix(Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    .line 146
    :cond_1b
    if-eqz p3, :cond_39

    .line 147
    const-string/jumbo v7, "lat"

    invoke-virtual {p3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/airbnb/android/utils/Strap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string/jumbo v7, "lng"

    invoke-virtual {p3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/airbnb/android/utils/Strap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .local v4, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/airbnb/android/requests/PopularRequest$ItemType;->values()[Lcom/airbnb/android/requests/PopularRequest$ItemType;

    move-result-object v0

    .local v0, "arr$":[Lcom/airbnb/android/requests/PopularRequest$ItemType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_44
    if-ge v1, v2, :cond_57

    aget-object v5, v0, v1

    .line 153
    .local v5, "type":Lcom/airbnb/android/requests/PopularRequest$ItemType;
    const-string/jumbo v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/airbnb/android/requests/PopularRequest$ItemType;->key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 156
    .end local v5    # "type":Lcom/airbnb/android/requests/PopularRequest$ItemType;
    :cond_57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 157
    .local v6, "types":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_72

    .line 158
    const-string/jumbo v7, "types_to_support"

    const-string/jumbo v8, ","

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/airbnb/android/utils/Strap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_72
    return-object v3
.end method


# virtual methods
.method public isPermaCache()Z
    .registers 2

    .prologue
    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method protected preProcess()V
    .registers 13

    .prologue
    .line 72
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/airbnb/android/requests/PopularRequest;->popularItems:Ljava/util/List;

    .line 73
    iget-object v8, p0, Lcom/airbnb/android/requests/PopularRequest;->items:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/android/requests/PopularRequest$PopularItemWrapper;

    .line 74
    .local v6, "popularItemWrapper":Lcom/airbnb/android/requests/PopularRequest$PopularItemWrapper;
    iget-object v5, v6, Lcom/airbnb/android/requests/PopularRequest$PopularItemWrapper;->item:Lcom/airbnb/android/requests/PopularRequest$PopularItem;

    .line 75
    .local v5, "popularItem":Lcom/airbnb/android/requests/PopularRequest$PopularItem;
    iget-object v8, v5, Lcom/airbnb/android/requests/PopularRequest$PopularItem;->subtype:Ljava/lang/String;

    invoke-static {v8}, Lcom/airbnb/android/requests/PopularRequest$ItemType;->findType(Ljava/lang/String;)Lcom/airbnb/android/requests/PopularRequest$ItemType;

    move-result-object v2

    .line 76
    .local v2, "itemType":Lcom/airbnb/android/requests/PopularRequest$ItemType;
    if-eqz v2, :cond_d

    .line 77
    iget-object v8, v5, Lcom/airbnb/android/requests/PopularRequest$PopularItem;->collections:Ljava/util/List;

    if-eqz v8, :cond_46

    .line 78
    iget-object v8, v5, Lcom/airbnb/android/requests/PopularRequest$PopularItem;->collections:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/airbnb/android/requests/Wrappers$CollectionWrapper;

    .line 79
    .local v7, "wrapper":Lcom/airbnb/android/requests/Wrappers$CollectionWrapper;
    iget-object v8, p0, Lcom/airbnb/android/requests/PopularRequest;->popularItems:Ljava/util/List;

    new-instance v9, Lcom/airbnb/android/models/CollectionFeedItem;

    iget-object v10, v7, Lcom/airbnb/android/requests/Wrappers$CollectionWrapper;->collection:Lcom/airbnb/android/models/Collection;

    invoke-direct {v9, v10}, Lcom/airbnb/android/models/CollectionFeedItem;-><init>(Lcom/airbnb/android/models/Collection;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 81
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v7    # "wrapper":Lcom/airbnb/android/requests/Wrappers$CollectionWrapper;
    :cond_46
    iget-object v8, v5, Lcom/airbnb/android/requests/PopularRequest$PopularItem;->listings:Ljava/util/List;

    if-eqz v8, :cond_6b

    .line 82
    iget-object v8, v5, Lcom/airbnb/android/requests/PopularRequest$PopularItem;->listings:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_50
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/models/Listing;

    .line 83
    .local v3, "listing":Lcom/airbnb/android/models/Listing;
    iget-object v8, p0, Lcom/airbnb/android/requests/PopularRequest;->popularItems:Ljava/util/List;

    new-instance v9, Lcom/airbnb/android/models/ListingFeedItem;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/airbnb/android/models/ListingFeedItem;-><init>(Lcom/airbnb/android/models/Listing;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_50

    .line 85
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "listing":Lcom/airbnb/android/models/Listing;
    :cond_6b
    iget-object v8, v5, Lcom/airbnb/android/requests/PopularRequest$PopularItem;->travelLocations:Ljava/util/List;

    if-eqz v8, :cond_a0

    .line 86
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v4, "locations":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/TravelLocation;>;"
    iget-object v8, v5, Lcom/airbnb/android/requests/PopularRequest$PopularItem;->travelLocations:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_7a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/airbnb/android/requests/Wrappers$TravelLocationWrapper;

    .line 88
    .local v7, "wrapper":Lcom/airbnb/android/requests/Wrappers$TravelLocationWrapper;
    iget-object v8, v7, Lcom/airbnb/android/requests/Wrappers$TravelLocationWrapper;->location:Lcom/airbnb/android/models/TravelLocation;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7a

    .line 90
    .end local v7    # "wrapper":Lcom/airbnb/android/requests/Wrappers$TravelLocationWrapper;
    :cond_8c
    iget-object v8, p0, Lcom/airbnb/android/requests/PopularRequest;->popularItems:Ljava/util/List;

    new-instance v9, Lcom/airbnb/android/models/TravelLocationsFeedItem;

    iget-object v10, v6, Lcom/airbnb/android/requests/PopularRequest$PopularItemWrapper;->item:Lcom/airbnb/android/requests/PopularRequest$PopularItem;

    iget-object v10, v10, Lcom/airbnb/android/requests/PopularRequest$PopularItem;->key:Ljava/lang/String;

    iget-object v11, v6, Lcom/airbnb/android/requests/PopularRequest$PopularItemWrapper;->item:Lcom/airbnb/android/requests/PopularRequest$PopularItem;

    iget-object v11, v11, Lcom/airbnb/android/requests/PopularRequest$PopularItem;->loggingParams:Lcom/airbnb/android/utils/Strap;

    invoke-direct {v9, v4, v10, v11}, Lcom/airbnb/android/models/TravelLocationsFeedItem;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 91
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "locations":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/TravelLocation;>;"
    :cond_a0
    sget-object v8, Lcom/airbnb/android/requests/PopularRequest$ItemType;->Video:Lcom/airbnb/android/requests/PopularRequest$ItemType;

    if-ne v2, v8, :cond_b0

    .line 92
    iget-object v8, p0, Lcom/airbnb/android/requests/PopularRequest;->popularItems:Ljava/util/List;

    new-instance v9, Lcom/airbnb/android/models/VideoFeedItem;

    invoke-direct {v9, v5}, Lcom/airbnb/android/models/VideoFeedItem;-><init>(Lcom/airbnb/android/requests/PopularRequest$PopularItem;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 93
    :cond_b0
    sget-object v8, Lcom/airbnb/android/requests/PopularRequest$ItemType;->WebLink:Lcom/airbnb/android/requests/PopularRequest$ItemType;

    if-ne v2, v8, :cond_d

    .line 94
    iget-object v8, p0, Lcom/airbnb/android/requests/PopularRequest;->popularItems:Ljava/util/List;

    new-instance v9, Lcom/airbnb/android/models/WebLinkFeedItem;

    invoke-direct {v9, v5}, Lcom/airbnb/android/models/WebLinkFeedItem;-><init>(Lcom/airbnb/android/requests/PopularRequest$PopularItem;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 98
    .end local v2    # "itemType":Lcom/airbnb/android/requests/PopularRequest$ItemType;
    .end local v5    # "popularItem":Lcom/airbnb/android/requests/PopularRequest$PopularItem;
    .end local v6    # "popularItemWrapper":Lcom/airbnb/android/requests/PopularRequest$PopularItemWrapper;
    :cond_c0
    return-void
.end method
