.class public Lcom/airbnb/android/requests/ProPhotoRequest$ProPhotographyStatus;
.super Ljava/lang/Object;
.source "ProPhotoRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/requests/ProPhotoRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProPhotographyStatus"
.end annotation


# instance fields
.field private listingId:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "listing_id"
    .end annotation
.end field

.field private proPhotoStatus:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "status"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/requests/ProPhotoRequest$ProPhotographyStatus;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/requests/ProPhotoRequest$ProPhotographyStatus;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/airbnb/android/requests/ProPhotoRequest$ProPhotographyStatus;->proPhotoStatus:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/requests/ProPhotoRequest$ProPhotographyStatus;)J
    .registers 3
    .param p0, "x0"    # Lcom/airbnb/android/requests/ProPhotoRequest$ProPhotographyStatus;

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/airbnb/android/requests/ProPhotoRequest$ProPhotographyStatus;->listingId:J

    return-wide v0
.end method
