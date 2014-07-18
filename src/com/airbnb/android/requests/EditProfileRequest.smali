.class public Lcom/airbnb/android/requests/EditProfileRequest;
.super Lcom/airbnb/android/requests/AirbnbRequestV2;
.source "EditProfileRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequestV2",
        "<",
        "Lcom/airbnb/android/requests/EditProfileRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public user:Lcom/airbnb/android/models/User;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "user"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 9
    .param p1, "section"    # Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;
    .param p2, "newValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/EditProfileRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/EditProfileRequest;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "users/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/airbnb/android/requests/EditProfileRequest;->getCurrentUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "_format"

    const-string/jumbo v4, "edit_profile"

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-direct {p0, v1, v2, p3}, Lcom/airbnb/android/requests/AirbnbRequestV2;-><init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 16
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->getJsonKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 17
    .local v0, "updatedFieldsStrap":Lcom/airbnb/android/utils/Strap;
    new-instance v1, Lcom/airbnb/android/requests/AirbnbRequestV2$PatchBuilder;

    invoke-direct {v1}, Lcom/airbnb/android/requests/AirbnbRequestV2$PatchBuilder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/airbnb/android/requests/AirbnbRequestV2$PatchBuilder;->replace(Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/requests/AirbnbRequestV2$PatchBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/requests/AirbnbRequestV2$PatchBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/airbnb/android/requests/EditProfileRequest;->setJsonPost(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 9
    .param p1, "newFirstName"    # Ljava/lang/String;
    .param p2, "newLastName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/EditProfileRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/EditProfileRequest;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "users/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/airbnb/android/requests/EditProfileRequest;->getCurrentUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "_format"

    const-string/jumbo v4, "edit_profile"

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-direct {p0, v1, v2, p3}, Lcom/airbnb/android/requests/AirbnbRequestV2;-><init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 22
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 23
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 24
    const-string/jumbo v1, "first_name"

    invoke-virtual {v0, v1, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    .line 26
    :cond_39
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 27
    const-string/jumbo v1, "last_name"

    invoke-virtual {v0, v1, p2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    .line 29
    :cond_45
    new-instance v1, Lcom/airbnb/android/requests/AirbnbRequestV2$PatchBuilder;

    invoke-direct {v1}, Lcom/airbnb/android/requests/AirbnbRequestV2$PatchBuilder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/airbnb/android/requests/AirbnbRequestV2$PatchBuilder;->replace(Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/requests/AirbnbRequestV2$PatchBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/requests/AirbnbRequestV2$PatchBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/airbnb/android/requests/EditProfileRequest;->setJsonPost(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method private static getCurrentUserId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getMethod()I
    .registers 2

    .prologue
    .line 38
    const/4 v0, 0x7

    return v0
.end method
