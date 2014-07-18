.class public Lcom/airbnb/android/requests/MySpacesRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "MySpacesRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/MySpacesRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAXIMUM_LEAD_TIME_LMB:Ljava/lang/Integer;


# instance fields
.field private eligibleListingsNotLastMinuteBookable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;"
        }
    .end annotation
.end field

.field private instantBookEligibleListings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;"
        }
    .end annotation
.end field

.field private isPaused:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_paused"
    .end annotation
.end field

.field public listings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;"
        }
    .end annotation
.end field

.field private pausedBody:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "paused_body"
    .end annotation
.end field

.field private pausedTitle:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "paused_title"
    .end annotation
.end field

.field private wrappedListings:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "listings"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/requests/Wrappers$ListingWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const/16 v0, 0x18

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/requests/MySpacesRequest;->MAXIMUM_LEAD_TIME_LMB:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/airbnb/android/models/User;ZLcom/airbnb/android/requests/RequestListener;)V
    .registers 6
    .param p1, "user"    # Lcom/airbnb/android/models/User;
    .param p2, "showUnavailable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/models/User;",
            "Z",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/MySpacesRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/MySpacesRequest;>;"
    invoke-virtual {p1}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/airbnb/android/requests/MySpacesRequest;-><init>(Ljava/lang/String;ZLcom/airbnb/android/requests/RequestListener;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLcom/airbnb/android/requests/RequestListener;)V
    .registers 6
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "showUnavailable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/MySpacesRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/MySpacesRequest;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/listings"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/airbnb/android/requests/MySpacesRequest;->getProperties(Z)Ljava/util/Properties;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    .line 23
    return-void
.end method

.method private static getProperties(Z)Ljava/util/Properties;
    .registers 4
    .param p0, "showUnavailable"    # Z

    .prologue
    .line 26
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 27
    .local v0, "p":Ljava/util/Properties;
    const-string/jumbo v1, "include_unavailable"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string/jumbo v1, "include"

    const-string/jumbo v2, "photography_status"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string/jumbo v1, "items_per_page"

    const-string/jumbo v2, "50"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string/jumbo v1, "include_host_standards"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-object v0
.end method


# virtual methods
.method public getEligibleListingsNotLastMinuteBookable()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v2, p0, Lcom/airbnb/android/requests/MySpacesRequest;->eligibleListingsNotLastMinuteBookable:Ljava/util/List;

    if-nez v2, :cond_41

    .line 73
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/airbnb/android/requests/MySpacesRequest;->eligibleListingsNotLastMinuteBookable:Ljava/util/List;

    .line 74
    invoke-virtual {p0}, Lcom/airbnb/android/requests/MySpacesRequest;->getInstantBookEligibleListings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Listing;

    .line 75
    .local v1, "listing":Lcom/airbnb/android/models/Listing;
    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->isInstantBookable()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->isInstantBookable()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getInstantBookLeadTimeHours()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/airbnb/android/requests/MySpacesRequest;->MAXIMUM_LEAD_TIME_LMB:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v2, v3, :cond_13

    .line 76
    :cond_3b
    iget-object v2, p0, Lcom/airbnb/android/requests/MySpacesRequest;->eligibleListingsNotLastMinuteBookable:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 80
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listing":Lcom/airbnb/android/models/Listing;
    :cond_41
    iget-object v2, p0, Lcom/airbnb/android/requests/MySpacesRequest;->eligibleListingsNotLastMinuteBookable:Ljava/util/List;

    return-object v2
.end method

.method public getInstantBookEligibleListings()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v2, p0, Lcom/airbnb/android/requests/MySpacesRequest;->instantBookEligibleListings:Ljava/util/List;

    if-nez v2, :cond_2f

    .line 61
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/airbnb/android/requests/MySpacesRequest;->instantBookEligibleListings:Ljava/util/List;

    .line 62
    iget-object v2, p0, Lcom/airbnb/android/requests/MySpacesRequest;->listings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Listing;

    .line 63
    .local v1, "listing":Lcom/airbnb/android/models/Listing;
    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->isListed()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->isInstantBookEligible()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 64
    iget-object v2, p0, Lcom/airbnb/android/requests/MySpacesRequest;->instantBookEligibleListings:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 68
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listing":Lcom/airbnb/android/models/Listing;
    :cond_2f
    iget-object v2, p0, Lcom/airbnb/android/requests/MySpacesRequest;->instantBookEligibleListings:Ljava/util/List;

    return-object v2
.end method

.method public getSoftSuspendedEducationBody()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/airbnb/android/requests/MySpacesRequest;->pausedBody:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftSuspendedEducationTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/airbnb/android/requests/MySpacesRequest;->pausedTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTTL()J
    .registers 3

    .prologue
    .line 36
    const-wide/32 v0, 0x5265c00

    return-wide v0
.end method

.method public isSoftSuspended()Z
    .registers 3

    .prologue
    .line 87
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-boolean v1, p0, Lcom/airbnb/android/requests/MySpacesRequest;->isPaused:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected preProcess()V
    .registers 5

    .prologue
    .line 47
    iget-object v2, p0, Lcom/airbnb/android/requests/MySpacesRequest;->wrappedListings:Ljava/util/List;

    if-eqz v2, :cond_25

    .line 48
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/airbnb/android/requests/MySpacesRequest;->listings:Ljava/util/ArrayList;

    .line 49
    iget-object v2, p0, Lcom/airbnb/android/requests/MySpacesRequest;->wrappedListings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/requests/Wrappers$ListingWrapper;

    .line 50
    .local v1, "wrapper":Lcom/airbnb/android/requests/Wrappers$ListingWrapper;
    iget-object v2, p0, Lcom/airbnb/android/requests/MySpacesRequest;->listings:Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/airbnb/android/requests/Wrappers$ListingWrapper;->listing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 53
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "wrapper":Lcom/airbnb/android/requests/Wrappers$ListingWrapper;
    :cond_25
    return-void
.end method
