.class public Lcom/airbnb/android/services/PhotoUploadService$PhotoUploadEvent;
.super Ljava/lang/Object;
.source "PhotoUploadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/services/PhotoUploadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PhotoUploadEvent"
.end annotation


# instance fields
.field public mCount:I

.field public mListing:Lcom/airbnb/android/models/Listing;

.field final synthetic this$0:Lcom/airbnb/android/services/PhotoUploadService;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/services/PhotoUploadService;Lcom/airbnb/android/models/Listing;I)V
    .registers 4
    .param p2, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p3, "count"    # I

    .prologue
    .line 73
    iput-object p1, p0, Lcom/airbnb/android/services/PhotoUploadService$PhotoUploadEvent;->this$0:Lcom/airbnb/android/services/PhotoUploadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p2, p0, Lcom/airbnb/android/services/PhotoUploadService$PhotoUploadEvent;->mListing:Lcom/airbnb/android/models/Listing;

    .line 75
    iput p3, p0, Lcom/airbnb/android/services/PhotoUploadService$PhotoUploadEvent;->mCount:I

    .line 76
    return-void
.end method
