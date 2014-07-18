.class public Lcom/airbnb/android/requests/Wrappers$ListingWrapper;
.super Ljava/lang/Object;
.source "Wrappers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/requests/Wrappers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListingWrapper"
.end annotation


# instance fields
.field public listing:Lcom/airbnb/android/models/Listing;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "listing"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setListing(Lcom/airbnb/android/models/Listing;)V
    .registers 2
    .param p1, "aListing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/airbnb/android/requests/Wrappers$ListingWrapper;->listing:Lcom/airbnb/android/models/Listing;

    .line 65
    return-void
.end method
