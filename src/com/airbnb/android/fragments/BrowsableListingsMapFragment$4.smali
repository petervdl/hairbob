.class Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$4;
.super Ljava/lang/Object;
.source "BrowsableListingsMapFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->setupLoopingViewPager(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;)V
    .registers 2

    .prologue
    .line 200
    iput-object p1, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$4;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 213
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 209
    return-void
.end method

.method public onPageSelected(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 204
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$4;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->onLoopingViewPagerPageSelected(I)V

    .line 205
    return-void
.end method
