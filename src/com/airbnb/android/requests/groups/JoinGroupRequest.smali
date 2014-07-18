.class public Lcom/airbnb/android/requests/groups/JoinGroupRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "JoinGroupRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/groups/JoinGroupRequest;",
        ">;"
    }
.end annotation


# instance fields
.field membership:Lcom/airbnb/android/models/groups/Membership;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "membership"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 7
    .param p1, "group"    # Lcom/airbnb/android/models/groups/Group;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/models/groups/Group;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/groups/JoinGroupRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/groups/JoinGroupRequest;>;"
    const-string/jumbo v0, "groups/%d/submit_membership_request"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/Group;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 13
    return-void
.end method


# virtual methods
.method public getMethod()I
    .registers 2

    .prologue
    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public updateGroup(Lcom/airbnb/android/models/groups/Group;)Lcom/airbnb/android/models/groups/Group;
    .registers 3
    .param p1, "group"    # Lcom/airbnb/android/models/groups/Group;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/airbnb/android/requests/groups/JoinGroupRequest;->membership:Lcom/airbnb/android/models/groups/Membership;

    invoke-virtual {v0}, Lcom/airbnb/android/models/groups/Membership;->isMember()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/airbnb/android/models/groups/Group;->setIsMember(Z)V

    .line 25
    iget-object v0, p0, Lcom/airbnb/android/requests/groups/JoinGroupRequest;->membership:Lcom/airbnb/android/models/groups/Membership;

    invoke-virtual {v0}, Lcom/airbnb/android/models/groups/Membership;->isPending()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/airbnb/android/models/groups/Group;->setIsPending(Z)V

    .line 26
    return-object p1
.end method
