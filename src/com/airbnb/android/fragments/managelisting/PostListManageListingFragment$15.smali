.class Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$15;
.super Ljava/lang/Object;
.source "PostListManageListingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->scrollToInstantBookSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;)V
    .registers 2

    .prologue
    .line 380
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$15;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 384
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$15;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    invoke-virtual {v5}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->isAdded()Z

    move-result v5

    if-eqz v5, :cond_45

    .line 385
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$15;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    invoke-virtual {v5}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 386
    .local v1, "display":Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 387
    .local v3, "screenSize":Landroid/graphics/Point;
    invoke-virtual {v1, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 388
    iget v2, v3, Landroid/graphics/Point;->y:I

    .line 389
    .local v2, "screenHeight":I
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$15;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    iget-object v5, v5, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mInstantBookListHeader:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTop()I

    move-result v5

    div-int/lit8 v6, v2, 0x2

    add-int v4, v5, v6

    .line 391
    .local v4, "scrollTo":I
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$15;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    iget-object v5, v5, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mScrollView:Landroid/widget/ScrollView;

    const-string/jumbo v6, "scrollY"

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v4, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 392
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v5, 0x3e8

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 393
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 395
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    .end local v1    # "display":Landroid/view/Display;
    .end local v2    # "screenHeight":I
    .end local v3    # "screenSize":Landroid/graphics/Point;
    .end local v4    # "scrollTo":I
    :cond_45
    return-void
.end method
