.class Lcom/airbnb/android/activities/ListingPicturesActivity$1;
.super Ljava/lang/Object;
.source "ListingPicturesActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/ListingPicturesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/ListingPicturesActivity;

.field final synthetic val$imageIndex:Landroid/widget/TextView;

.field final synthetic val$pictureCount:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/ListingPicturesActivity;Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 100
    iput-object p1, p0, Lcom/airbnb/android/activities/ListingPicturesActivity$1;->this$0:Lcom/airbnb/android/activities/ListingPicturesActivity;

    iput-object p2, p0, Lcom/airbnb/android/activities/ListingPicturesActivity$1;->val$imageIndex:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/airbnb/android/activities/ListingPicturesActivity$1;->val$pictureCount:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 122
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 117
    return-void
.end method

.method public onPageSelected(I)V
    .registers 8
    .param p1, "position"    # I

    .prologue
    .line 104
    # getter for: Lcom/airbnb/android/activities/ListingPicturesActivity;->mIsLandscape:Z
    invoke-static {}, Lcom/airbnb/android/activities/ListingPicturesActivity;->access$000()Z

    move-result v0

    if-nez v0, :cond_25

    .line 105
    iget-object v0, p0, Lcom/airbnb/android/activities/ListingPicturesActivity$1;->val$imageIndex:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/airbnb/android/activities/ListingPicturesActivity$1;->this$0:Lcom/airbnb/android/activities/ListingPicturesActivity;

    const v2, 0x7f0e0538

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/airbnb/android/activities/ListingPicturesActivity$1;->val$pictureCount:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/activities/ListingPicturesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_25
    # getter for: Lcom/airbnb/android/activities/ListingPicturesActivity;->mIsLandscape:Z
    invoke-static {}, Lcom/airbnb/android/activities/ListingPicturesActivity;->access$000()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/airbnb/android/activities/ListingPicturesActivity$1;->this$0:Lcom/airbnb/android/activities/ListingPicturesActivity;

    # invokes: Lcom/airbnb/android/activities/ListingPicturesActivity;->isStatusBarShowing()Z
    invoke-static {v0}, Lcom/airbnb/android/activities/ListingPicturesActivity;->access$100(Lcom/airbnb/android/activities/ListingPicturesActivity;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 108
    iget-object v0, p0, Lcom/airbnb/android/activities/ListingPicturesActivity$1;->this$0:Lcom/airbnb/android/activities/ListingPicturesActivity;

    # invokes: Lcom/airbnb/android/activities/ListingPicturesActivity;->hideStatusBar()V
    invoke-static {v0}, Lcom/airbnb/android/activities/ListingPicturesActivity;->access$200(Lcom/airbnb/android/activities/ListingPicturesActivity;)V

    .line 111
    :cond_38
    iget-object v0, p0, Lcom/airbnb/android/activities/ListingPicturesActivity$1;->this$0:Lcom/airbnb/android/activities/ListingPicturesActivity;

    iget-object v1, p0, Lcom/airbnb/android/activities/ListingPicturesActivity$1;->this$0:Lcom/airbnb/android/activities/ListingPicturesActivity;

    # getter for: Lcom/airbnb/android/activities/ListingPicturesActivity;->mMaxScroll:I
    invoke-static {v1}, Lcom/airbnb/android/activities/ListingPicturesActivity;->access$300(Lcom/airbnb/android/activities/ListingPicturesActivity;)I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    # setter for: Lcom/airbnb/android/activities/ListingPicturesActivity;->mMaxScroll:I
    invoke-static {v0, v1}, Lcom/airbnb/android/activities/ListingPicturesActivity;->access$302(Lcom/airbnb/android/activities/ListingPicturesActivity;I)I

    .line 112
    return-void
.end method
