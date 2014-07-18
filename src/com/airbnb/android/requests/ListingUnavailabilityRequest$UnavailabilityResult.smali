.class Lcom/airbnb/android/requests/ListingUnavailabilityRequest$UnavailabilityResult;
.super Ljava/lang/Object;
.source "ListingUnavailabilityRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/requests/ListingUnavailabilityRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnavailabilityResult"
.end annotation


# instance fields
.field private unavailability:Ljava/util/ArrayList;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "unavailabilities"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/requests/ListingUnavailabilityRequest$UnavailabilityResult;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/requests/ListingUnavailabilityRequest$UnavailabilityResult;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/airbnb/android/requests/ListingUnavailabilityRequest$UnavailabilityResult;->unavailability:Ljava/util/ArrayList;

    return-object v0
.end method
