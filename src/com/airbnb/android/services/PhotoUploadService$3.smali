.class Lcom/airbnb/android/services/PhotoUploadService$3;
.super Ljava/lang/Object;
.source "PhotoUploadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/services/PhotoUploadService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/services/PhotoUploadService;

.field final synthetic val$filePaths:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/airbnb/android/services/PhotoUploadService;Ljava/util/List;)V
    .registers 3

    .prologue
    .line 181
    iput-object p1, p0, Lcom/airbnb/android/services/PhotoUploadService$3;->this$0:Lcom/airbnb/android/services/PhotoUploadService;

    iput-object p2, p0, Lcom/airbnb/android/services/PhotoUploadService$3;->val$filePaths:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 185
    new-instance v1, Lcom/airbnb/android/services/PhotoUploadService$PhotoUploadEvent;

    iget-object v2, p0, Lcom/airbnb/android/services/PhotoUploadService$3;->this$0:Lcom/airbnb/android/services/PhotoUploadService;

    iget-object v3, p0, Lcom/airbnb/android/services/PhotoUploadService$3;->this$0:Lcom/airbnb/android/services/PhotoUploadService;

    # getter for: Lcom/airbnb/android/services/PhotoUploadService;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v3}, Lcom/airbnb/android/services/PhotoUploadService;->access$000(Lcom/airbnb/android/services/PhotoUploadService;)Lcom/airbnb/android/models/Listing;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/services/PhotoUploadService$3;->val$filePaths:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/airbnb/android/services/PhotoUploadService$PhotoUploadEvent;-><init>(Lcom/airbnb/android/services/PhotoUploadService;Lcom/airbnb/android/models/Listing;I)V

    .line 186
    .local v1, "photoEvent":Lcom/airbnb/android/services/PhotoUploadService$PhotoUploadEvent;
    sget-object v2, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v2, v1}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 188
    iget-object v2, p0, Lcom/airbnb/android/services/PhotoUploadService$3;->this$0:Lcom/airbnb/android/services/PhotoUploadService;

    # getter for: Lcom/airbnb/android/services/PhotoUploadService;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v2}, Lcom/airbnb/android/services/PhotoUploadService;->access$000(Lcom/airbnb/android/services/PhotoUploadService;)Lcom/airbnb/android/models/Listing;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 189
    new-instance v0, Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;

    iget-object v2, p0, Lcom/airbnb/android/services/PhotoUploadService$3;->this$0:Lcom/airbnb/android/services/PhotoUploadService;

    # getter for: Lcom/airbnb/android/services/PhotoUploadService;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v2}, Lcom/airbnb/android/services/PhotoUploadService;->access$000(Lcom/airbnb/android/services/PhotoUploadService;)Lcom/airbnb/android/models/Listing;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;-><init>(Lcom/airbnb/android/models/Listing;)V

    .line 190
    .local v0, "listingEvent":Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;
    sget-object v2, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v2, v0}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 192
    .end local v0    # "listingEvent":Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;
    :cond_30
    return-void
.end method
