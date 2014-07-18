.class Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$1;
.super Ljava/lang/Object;
.source "ViewPagerFtueBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$viewPager:Lcom/airbnb/android/views/ClickableViewPager;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;Lcom/airbnb/android/views/ClickableViewPager;)V
    .registers 3

    .prologue
    .line 107
    iput-object p1, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$1;->this$0:Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;

    iput-object p2, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$1;->val$viewPager:Lcom/airbnb/android/views/ClickableViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$1;->this$0:Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;

    iget v0, v0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mCurrPage:I

    iget-object v1, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$1;->this$0:Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;

    invoke-virtual {v1}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->getLastPageIndex()I

    move-result v1

    if-eq v0, v1, :cond_18

    .line 112
    iget-object v0, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$1;->val$viewPager:Lcom/airbnb/android/views/ClickableViewPager;

    iget-object v1, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$1;->this$0:Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;

    iget v1, v1, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mCurrPage:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/views/ClickableViewPager;->setCurrentItem(IZ)V

    .line 114
    :cond_18
    return-void
.end method
