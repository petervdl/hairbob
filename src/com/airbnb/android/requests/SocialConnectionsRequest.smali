.class public Lcom/airbnb/android/requests/SocialConnectionsRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "SocialConnectionsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/SocialConnectionsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public caption:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "caption"
    .end annotation
.end field

.field public connections:Ljava/util/ArrayList;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "connections"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/SocialConnection;",
            ">;"
        }
    .end annotation
.end field

.field public connectionsCount:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "connections_count"
    .end annotation
.end field

.field public targetUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLcom/airbnb/android/requests/RequestListener;)V
    .registers 8
    .param p1, "targetUserId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/SocialConnectionsRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/SocialConnectionsRequest;>;"
    const-string/jumbo v0, "users/%d/social_connections"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 13
    return-void
.end method


# virtual methods
.method public getTTL()J
    .registers 3

    .prologue
    .line 25
    const-wide/32 v0, 0x5265c00

    return-wide v0
.end method
