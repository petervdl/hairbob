.class Lcom/airbnb/android/fragments/ViewPagerFtueDialog$2;
.super Ljava/lang/Object;
.source "ViewPagerFtueDialog.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ViewPagerFtueDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ViewPagerFtueDialog;

.field final synthetic val$dots:Lcom/airbnb/android/views/DotsCounter;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ViewPagerFtueDialog;Lcom/airbnb/android/views/DotsCounter;)V
    .registers 3

    .prologue
    .line 81
    iput-object p1, p0, Lcom/airbnb/android/fragments/ViewPagerFtueDialog$2;->this$0:Lcom/airbnb/android/fragments/ViewPagerFtueDialog;

    iput-object p2, p0, Lcom/airbnb/android/fragments/ViewPagerFtueDialog$2;->val$dots:Lcom/airbnb/android/views/DotsCounter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 3
    .param p1, "state"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/airbnb/android/fragments/ViewPagerFtueDialog$2;->this$0:Lcom/airbnb/android/fragments/ViewPagerFtueDialog;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ViewPagerFtueDialog;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_d

    .line 95
    iget-object v0, p0, Lcom/airbnb/android/fragments/ViewPagerFtueDialog$2;->this$0:Lcom/airbnb/android/fragments/ViewPagerFtueDialog;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ViewPagerFtueDialog;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 97
    :cond_d
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/airbnb/android/fragments/ViewPagerFtueDialog$2;->this$0:Lcom/airbnb/android/fragments/ViewPagerFtueDialog;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ViewPagerFtueDialog;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_d

    .line 103
    iget-object v0, p0, Lcom/airbnb/android/fragments/ViewPagerFtueDialog$2;->this$0:Lcom/airbnb/android/fragments/ViewPagerFtueDialog;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ViewPagerFtueDialog;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 105
    :cond_d
    return-void
.end method

.method public onPageSelected(I)V
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/airbnb/android/fragments/ViewPagerFtueDialog$2;->this$0:Lcom/airbnb/android/fragments/ViewPagerFtueDialog;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ViewPagerFtueDialog$2;->val$dots:Lcom/airbnb/android/views/DotsCounter;

    # invokes: Lcom/airbnb/android/fragments/ViewPagerFtueDialog;->goToNextFtuePage(ILcom/airbnb/android/views/DotsCounter;)V
    invoke-static {v0, p1, v1}, Lcom/airbnb/android/fragments/ViewPagerFtueDialog;->access$000(Lcom/airbnb/android/fragments/ViewPagerFtueDialog;ILcom/airbnb/android/views/DotsCounter;)V

    .line 87
    iget-object v0, p0, Lcom/airbnb/android/fragments/ViewPagerFtueDialog$2;->this$0:Lcom/airbnb/android/fragments/ViewPagerFtueDialog;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ViewPagerFtueDialog;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_14

    .line 88
    iget-object v0, p0, Lcom/airbnb/android/fragments/ViewPagerFtueDialog$2;->this$0:Lcom/airbnb/android/fragments/ViewPagerFtueDialog;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ViewPagerFtueDialog;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 90
    :cond_14
    return-void
.end method
