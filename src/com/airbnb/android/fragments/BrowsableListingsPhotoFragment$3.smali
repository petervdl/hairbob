.class Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment$3;
.super Ljava/lang/Object;
.source "BrowsableListingsPhotoFragment.java"

# interfaces
.implements Lcom/airbnb/android/adapters/ListingPhotoAdapter$ListingShownListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;)V
    .registers 2

    .prologue
    .line 149
    iput-object p1, p0, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment$3;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListingShown(Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/models/Listing;)V
    .registers 4
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p2, "oldListing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 153
    const/4 v0, 0x1

    invoke-static {v0, p1, p2}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->executePrefetchRequest(ZLcom/airbnb/android/models/Listing;Lcom/airbnb/android/models/Listing;)V

    .line 154
    return-void
.end method
