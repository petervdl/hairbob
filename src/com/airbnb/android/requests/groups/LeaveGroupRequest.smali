.class public Lcom/airbnb/android/requests/groups/LeaveGroupRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "LeaveGroupRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/groups/LeaveGroupRequest;",
        ">;"
    }
.end annotation


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
            "Lcom/airbnb/android/requests/groups/LeaveGroupRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 10
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/groups/LeaveGroupRequest;>;"
    const-string/jumbo v0, "groups/%d/leave"

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

    .line 11
    return-void
.end method


# virtual methods
.method public getMethod()I
    .registers 2

    .prologue
    .line 15
    const/4 v0, 0x1

    return v0
.end method
