.class Lcom/airbnb/android/adapters/MyWishListListingsAdapter$3;
.super Ljava/lang/Object;
.source "MyWishListListingsAdapter.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->getWishListView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPrevState:I

.field final synthetic this$0:Lcom/airbnb/android/adapters/MyWishListListingsAdapter;

.field final synthetic val$listView:Lcom/airbnb/android/interfaces/ViewPagerAbsListView;

.field final synthetic val$viewHolder:Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/MyWishListListingsAdapter;Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;Lcom/airbnb/android/interfaces/ViewPagerAbsListView;)V
    .registers 4

    .prologue
    .line 204
    iput-object p1, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$3;->this$0:Lcom/airbnb/android/adapters/MyWishListListingsAdapter;

    iput-object p2, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$3;->val$viewHolder:Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;

    iput-object p3, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$3;->val$listView:Lcom/airbnb/android/interfaces/ViewPagerAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 4
    .param p1, "state"    # I

    .prologue
    .line 218
    iget v0, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$3;->mPrevState:I

    if-nez v0, :cond_13

    .line 219
    const/4 v0, 0x1

    if-ne p1, v0, :cond_10

    .line 221
    iget-object v0, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$3;->val$listView:Lcom/airbnb/android/interfaces/ViewPagerAbsListView;

    iget-object v1, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$3;->val$viewHolder:Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;

    iget-object v1, v1, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;->viewPager:Lcom/airbnb/android/views/ClickableViewPager;

    invoke-interface {v0, v1}, Lcom/airbnb/android/interfaces/ViewPagerAbsListView;->setCurrentViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 228
    :cond_10
    :goto_10
    iput p1, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$3;->mPrevState:I

    .line 229
    return-void

    .line 223
    :cond_13
    if-eqz p1, :cond_18

    const/4 v0, 0x2

    if-ne p1, v0, :cond_10

    .line 225
    :cond_18
    iget-object v0, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$3;->val$listView:Lcom/airbnb/android/interfaces/ViewPagerAbsListView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/airbnb/android/interfaces/ViewPagerAbsListView;->setCurrentViewPager(Landroid/support/v4/view/ViewPager;)V

    goto :goto_10
.end method

.method public onPageScrolled(IFI)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 214
    return-void
.end method

.method public onPageSelected(I)V
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 209
    iget-object v0, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$3;->this$0:Lcom/airbnb/android/adapters/MyWishListListingsAdapter;

    # getter for: Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->mCurrentPage:Landroid/util/SparseIntArray;
    invoke-static {v0}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->access$300(Lcom/airbnb/android/adapters/MyWishListListingsAdapter;)Landroid/util/SparseIntArray;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$3;->val$viewHolder:Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;

    iget v1, v1, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;->position:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 210
    return-void
.end method
