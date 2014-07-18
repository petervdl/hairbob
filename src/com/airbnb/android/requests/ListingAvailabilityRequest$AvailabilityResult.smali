.class public Lcom/airbnb/android/requests/ListingAvailabilityRequest$AvailabilityResult;
.super Ljava/lang/Object;
.source "ListingAvailabilityRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/requests/ListingAvailabilityRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AvailabilityResult"
.end annotation


# instance fields
.field private mErrorMessage:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "message"
    .end annotation
.end field

.field private mIsAvailable:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "available"
    .end annotation
.end field

.field private mNativePrice:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "price_native"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/airbnb/android/requests/ListingAvailabilityRequest$AvailabilityResult;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getNativePrice()I
    .registers 2

    .prologue
    .line 40
    iget v0, p0, Lcom/airbnb/android/requests/ListingAvailabilityRequest$AvailabilityResult;->mNativePrice:I

    return v0
.end method

.method public isAvailable()Z
    .registers 2

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/airbnb/android/requests/ListingAvailabilityRequest$AvailabilityResult;->mIsAvailable:Z

    return v0
.end method
