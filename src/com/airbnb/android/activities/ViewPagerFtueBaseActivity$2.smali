.class Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$2;
.super Ljava/lang/Object;
.source "ViewPagerFtueBaseActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;

.field final synthetic val$dots:Lcom/airbnb/android/views/DotsCounter;

.field final synthetic val$viewPager:Lcom/airbnb/android/views/ClickableViewPager;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;Lcom/airbnb/android/views/DotsCounter;Lcom/airbnb/android/views/ClickableViewPager;)V
    .registers 4

    .prologue
    .line 124
    iput-object p1, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$2;->this$0:Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;

    iput-object p2, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$2;->val$dots:Lcom/airbnb/android/views/DotsCounter;

    iput-object p3, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$2;->val$viewPager:Lcom/airbnb/android/views/ClickableViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 138
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$2;->this$0:Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->isParallaxMode()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 144
    iget-object v0, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$2;->this$0:Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;

    # invokes: Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->parallaxScrollBackgroundImage(II)V
    invoke-static {v0, p1, p3}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->access$200(Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;II)V

    .line 146
    :cond_d
    return-void
.end method

.method public onPageSelected(I)V
    .registers 6
    .param p1, "position"    # I

    .prologue
    .line 128
    iget-object v2, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$2;->this$0:Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;

    iget-object v3, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$2;->val$dots:Lcom/airbnb/android/views/DotsCounter;

    # invokes: Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->goToNextFtuePage(ILcom/airbnb/android/views/DotsCounter;)V
    invoke-static {v2, p1, v3}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->access$000(Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;ILcom/airbnb/android/views/DotsCounter;)V

    .line 129
    iget-object v2, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$2;->val$viewPager:Lcom/airbnb/android/views/ClickableViewPager;

    invoke-virtual {v2}, Lcom/airbnb/android/views/ClickableViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$FtueAdapter;

    invoke-virtual {v2, p1}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$FtueAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/fragments/ViewPagerFtueFragment;

    .line 130
    .local v1, "frag":Lcom/airbnb/android/fragments/ViewPagerFtueFragment;
    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ViewPagerFtueFragment;->getStickyButtonColor()I

    move-result v0

    .line 131
    .local v0, "colorRes":I
    if-lez v0, :cond_20

    .line 132
    iget-object v2, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$2;->this$0:Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;

    # invokes: Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->fadeStickyToColor(I)V
    invoke-static {v2, v0}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->access$100(Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;I)V

    .line 134
    :cond_20
    return-void
.end method
