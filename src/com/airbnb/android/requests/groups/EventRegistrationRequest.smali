.class public Lcom/airbnb/android/requests/groups/EventRegistrationRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "EventRegistrationRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/groups/EventRegistrationRequest;",
        ">;"
    }
.end annotation


# instance fields
.field event:Lcom/airbnb/android/models/groups/Event;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "event"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/airbnb/android/models/groups/Event;ZLcom/airbnb/android/requests/RequestListener;)V
    .registers 5
    .param p1, "event"    # Lcom/airbnb/android/models/groups/Event;
    .param p2, "isJoining"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/models/groups/Event;",
            "Z",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/groups/EventRegistrationRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/groups/EventRegistrationRequest;>;"
    invoke-static {p1, p2}, Lcom/airbnb/android/requests/groups/EventRegistrationRequest;->getPath(Lcom/airbnb/android/models/groups/Event;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 20
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/airbnb/android/requests/groups/EventRegistrationRequest;->setJsonPost(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method private static getPath(Lcom/airbnb/android/models/groups/Event;Z)Ljava/lang/String;
    .registers 7
    .param p0, "event"    # Lcom/airbnb/android/models/groups/Event;
    .param p1, "isJoining"    # Z

    .prologue
    .line 24
    if-eqz p1, :cond_29

    const-string/jumbo v0, "join"

    .line 25
    .local v0, "action":Ljava/lang/String;
    :goto_5
    const-string/jumbo v1, "groups/%d/events/%d/%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/Event;->getGroupId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/Event;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 24
    .end local v0    # "action":Ljava/lang/String;
    :cond_29
    const-string/jumbo v0, "unjoin"

    goto :goto_5
.end method

.method public static joinRequest(Lcom/airbnb/android/models/groups/Event;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/groups/EventRegistrationRequest;
    .registers 4
    .param p0, "event"    # Lcom/airbnb/android/models/groups/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/models/groups/Event;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/groups/EventRegistrationRequest;",
            ">;)",
            "Lcom/airbnb/android/requests/groups/EventRegistrationRequest;"
        }
    .end annotation

    .prologue
    .line 11
    .local p1, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/groups/EventRegistrationRequest;>;"
    new-instance v0, Lcom/airbnb/android/requests/groups/EventRegistrationRequest;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Lcom/airbnb/android/requests/groups/EventRegistrationRequest;-><init>(Lcom/airbnb/android/models/groups/Event;ZLcom/airbnb/android/requests/RequestListener;)V

    return-object v0
.end method

.method public static unjoinRequest(Lcom/airbnb/android/models/groups/Event;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/groups/EventRegistrationRequest;
    .registers 4
    .param p0, "event"    # Lcom/airbnb/android/models/groups/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/models/groups/Event;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/groups/EventRegistrationRequest;",
            ">;)",
            "Lcom/airbnb/android/requests/groups/EventRegistrationRequest;"
        }
    .end annotation

    .prologue
    .line 15
    .local p1, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/groups/EventRegistrationRequest;>;"
    new-instance v0, Lcom/airbnb/android/requests/groups/EventRegistrationRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/airbnb/android/requests/groups/EventRegistrationRequest;-><init>(Lcom/airbnb/android/models/groups/Event;ZLcom/airbnb/android/requests/RequestListener;)V

    return-object v0
.end method


# virtual methods
.method public getMethod()I
    .registers 2

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public getUpdatedContent()Lcom/airbnb/android/models/groups/Event;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/airbnb/android/requests/groups/EventRegistrationRequest;->event:Lcom/airbnb/android/models/groups/Event;

    return-object v0
.end method
