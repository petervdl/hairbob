.class public Lcom/airbnb/android/requests/groups/GetContentRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "GetContentRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/groups/GetContentRequest;",
        ">;"
    }
.end annotation


# instance fields
.field content:Lcom/airbnb/android/models/groups/Content;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "content"
    .end annotation
.end field

.field event:Lcom/airbnb/android/models/groups/Event;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "event"
    .end annotation
.end field

.field group:Lcom/airbnb/android/models/groups/Group;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "group"
    .end annotation
.end field

.field private mContent:Lcom/airbnb/android/models/groups/BaseContent;


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 9
    .param p1, "contentId"    # I
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Properties;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/groups/GetContentRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p4, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/groups/GetContentRequest;>;"
    const-string/jumbo v0, "groups/content/%s-%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    .line 25
    return-void
.end method

.method private getContentFromJSON()Lcom/airbnb/android/models/groups/BaseContent;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/airbnb/android/requests/groups/GetContentRequest;->content:Lcom/airbnb/android/models/groups/Content;

    if-eqz v0, :cond_7

    .line 38
    iget-object v0, p0, Lcom/airbnb/android/requests/groups/GetContentRequest;->content:Lcom/airbnb/android/models/groups/Content;

    .line 43
    :goto_6
    return-object v0

    .line 40
    :cond_7
    iget-object v0, p0, Lcom/airbnb/android/requests/groups/GetContentRequest;->event:Lcom/airbnb/android/models/groups/Event;

    if-eqz v0, :cond_e

    .line 41
    iget-object v0, p0, Lcom/airbnb/android/requests/groups/GetContentRequest;->event:Lcom/airbnb/android/models/groups/Event;

    goto :goto_6

    .line 43
    :cond_e
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static getContentRequest(ILjava/lang/String;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/groups/GetContentRequest;
    .registers 6
    .param p0, "contentId"    # I
    .param p1, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/groups/GetContentRequest;",
            ">;)",
            "Lcom/airbnb/android/requests/groups/GetContentRequest;"
        }
    .end annotation

    .prologue
    .line 16
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/groups/GetContentRequest;>;"
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 18
    .local v0, "params":Ljava/util/Properties;
    const-string/jumbo v1, "membership_limit"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string/jumbo v1, "include_ancestors"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v1, Lcom/airbnb/android/requests/groups/GetContentRequest;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/airbnb/android/requests/groups/GetContentRequest;-><init>(ILjava/lang/String;Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    return-object v1
.end method


# virtual methods
.method public getContent()Lcom/airbnb/android/models/groups/BaseContent;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/airbnb/android/requests/groups/GetContentRequest;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    return-object v0
.end method

.method public getGroup()Lcom/airbnb/android/models/groups/Group;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/airbnb/android/requests/groups/GetContentRequest;->group:Lcom/airbnb/android/models/groups/Group;

    return-object v0
.end method

.method protected preProcess()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/airbnb/android/requests/groups/GetContentRequest;->getContentFromJSON()Lcom/airbnb/android/models/groups/BaseContent;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/requests/groups/GetContentRequest;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    .line 49
    return-void
.end method
