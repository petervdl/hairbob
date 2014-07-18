.class Lcom/airbnb/android/requests/UpdateWishListPrivacyRequest$CollectionWrapper;
.super Ljava/lang/Object;
.source "UpdateWishListPrivacyRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/requests/UpdateWishListPrivacyRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CollectionWrapper"
.end annotation


# instance fields
.field public collection:Lcom/airbnb/android/models/Collection;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "collection"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
