.class Lcom/airbnb/android/adapters/ListingPhotoAdapter$3;
.super Ljava/lang/Object;
.source "ListingPhotoAdapter.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/ListingPhotoAdapter;->setupRow(Lcom/airbnb/android/models/Listing;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPrevState:I

.field final synthetic this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

.field final synthetic val$listView:Lcom/airbnb/android/interfaces/ViewPagerAbsListView;

.field final synthetic val$listing:Lcom/airbnb/android/models/Listing;

.field final synthetic val$viewHolder:Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;

.field final synthetic val$viewPager:Lcom/airbnb/android/views/ClickableViewPager;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/ListingPhotoAdapter;Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/interfaces/ViewPagerAbsListView;Lcom/airbnb/android/views/ClickableViewPager;)V
    .registers 6

    .prologue
    .line 284
    iput-object p1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$3;->this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    iput-object p2, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$3;->val$viewHolder:Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;

    iput-object p3, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$3;->val$listing:Lcom/airbnb/android/models/Listing;

    iput-object p4, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$3;->val$listView:Lcom/airbnb/android/interfaces/ViewPagerAbsListView;

    iput-object p5, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$3;->val$viewPager:Lcom/airbnb/android/views/ClickableViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 4
    .param p1, "state"    # I

    .prologue
    .line 306
    iget v0, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$3;->mPrevState:I

    if-nez v0, :cond_11

    .line 307
    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    .line 309
    iget-object v0, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$3;->val$listView:Lcom/airbnb/android/interfaces/ViewPagerAbsListView;

    iget-object v1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$3;->val$viewPager:Lcom/airbnb/android/views/ClickableViewPager;

    invoke-interface {v0, v1}, Lcom/airbnb/android/interfaces/ViewPagerAbsListView;->setCurrentViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 316
    :cond_e
    :goto_e
    iput p1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$3;->mPrevState:I

    .line 317
    return-void

    .line 311
    :cond_11
    if-eqz p1, :cond_16

    const/4 v0, 0x2

    if-ne p1, v0, :cond_e

    .line 313
    :cond_16
    iget-object v0, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$3;->val$listView:Lcom/airbnb/android/interfaces/ViewPagerAbsListView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/airbnb/android/interfaces/ViewPagerAbsListView;->setCurrentViewPager(Landroid/support/v4/view/ViewPager;)V

    goto :goto_e
.end method

.method public onPageScrolled(IFI)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 302
    return-void
.end method

.method public onPageSelected(I)V
    .registers 7
    .param p1, "position"    # I

    .prologue
    .line 289
    iget-object v0, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$3;->this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    iget-object v1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$3;->val$viewHolder:Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;

    # invokes: Lcom/airbnb/android/adapters/ListingPhotoAdapter;->fadeOutHintIcons(Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;I)V
    invoke-static {v0, v1, p1}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->access$200(Lcom/airbnb/android/adapters/ListingPhotoAdapter;Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;I)V

    .line 291
    iget-object v0, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$3;->this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    iget-object v0, v0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mCurrentPage:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$3;->val$viewHolder:Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;

    iget v1, v1, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->position:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 292
    const-string/jumbo v0, "search_photo"

    iget-object v1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$3;->this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    iget-object v1, v1, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mTrackingPosition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 293
    const-string/jumbo v0, "listing_swipe"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "listing_id"

    iget-object v3, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$3;->val$listing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;J)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "page_num"

    invoke-virtual {v1, v2, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;I)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/analytics/SearchAnalytics;->trackListResultsAction(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 298
    :cond_3d
    :goto_3d
    return-void

    .line 295
    :cond_3e
    const-string/jumbo v0, "featured"

    iget-object v1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$3;->this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    iget-object v1, v1, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mTrackingPosition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 296
    iget-object v0, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$3;->val$listing:Lcom/airbnb/android/models/Listing;

    invoke-static {v0, p1}, Lcom/airbnb/android/analytics/DiscoverAnalytics;->trackListingSwipe(Lcom/airbnb/android/models/Listing;I)V

    goto :goto_3d
.end method
