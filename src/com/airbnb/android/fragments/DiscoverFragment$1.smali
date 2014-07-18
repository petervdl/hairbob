.class Lcom/airbnb/android/fragments/DiscoverFragment$1;
.super Ljava/lang/Object;
.source "DiscoverFragment.java"

# interfaces
.implements Lcom/airbnb/android/adapters/ListingPhotoAdapter$ListingShownListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/DiscoverFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/DiscoverFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/DiscoverFragment;)V
    .registers 2

    .prologue
    .line 81
    iput-object p1, p0, Lcom/airbnb/android/fragments/DiscoverFragment$1;->this$0:Lcom/airbnb/android/fragments/DiscoverFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListingShown(Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/models/Listing;)V
    .registers 4
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p2, "oldListing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-static {v0, p1, p2}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->executePrefetchRequest(ZLcom/airbnb/android/models/Listing;Lcom/airbnb/android/models/Listing;)V

    .line 85
    return-void
.end method
