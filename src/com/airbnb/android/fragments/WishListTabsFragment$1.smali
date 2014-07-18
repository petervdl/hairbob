.class Lcom/airbnb/android/fragments/WishListTabsFragment$1;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "WishListTabsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/WishListTabsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/WishListTabsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/WishListTabsFragment;)V
    .registers 2

    .prologue
    .line 39
    iput-object p1, p0, Lcom/airbnb/android/fragments/WishListTabsFragment$1;->this$0:Lcom/airbnb/android/fragments/WishListTabsFragment;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 42
    iget-object v1, p0, Lcom/airbnb/android/fragments/WishListTabsFragment$1;->this$0:Lcom/airbnb/android/fragments/WishListTabsFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/WishListTabsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/activities/MainActivity;

    invoke-virtual {v1}, Lcom/airbnb/android/activities/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 44
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getNavigationItemCount()I

    move-result v1

    if-ge p1, v1, :cond_15

    .line 45
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 47
    :cond_15
    return-void
.end method
