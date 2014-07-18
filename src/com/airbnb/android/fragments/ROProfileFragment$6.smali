.class Lcom/airbnb/android/fragments/ROProfileFragment$6;
.super Ljava/lang/Object;
.source "ROProfileFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ROProfileFragment;->pushProfileContentToTopIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ROProfileFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ROProfileFragment;)V
    .registers 2

    .prologue
    .line 382
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROProfileFragment$6;->this$0:Lcom/airbnb/android/fragments/ROProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 387
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROProfileFragment$6;->this$0:Lcom/airbnb/android/fragments/ROProfileFragment;

    # getter for: Lcom/airbnb/android/fragments/ROProfileFragment;->mFragmentView:Landroid/view/View;
    invoke-static {v2}, Lcom/airbnb/android/fragments/ROProfileFragment;->access$200(Lcom/airbnb/android/fragments/ROProfileFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/ROProfileFragment$6;->this$0:Lcom/airbnb/android/fragments/ROProfileFragment;

    # getter for: Lcom/airbnb/android/fragments/ROProfileFragment;->mUserProfileContainer:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/airbnb/android/fragments/ROProfileFragment;->access$300(Lcom/airbnb/android/fragments/ROProfileFragment;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/airbnb/android/fragments/ROProfileFragment$6;->this$0:Lcom/airbnb/android/fragments/ROProfileFragment;

    iget v3, v3, Lcom/airbnb/android/fragments/ROProfileFragment;->mTabBarHeight:I

    sub-int v1, v2, v3

    .line 388
    .local v1, "paddingHeightNeeded":I
    if-lez v1, :cond_33

    .line 389
    iget-object v2, p0, Lcom/airbnb/android/fragments/ROProfileFragment$6;->this$0:Lcom/airbnb/android/fragments/ROProfileFragment;

    # getter for: Lcom/airbnb/android/fragments/ROProfileFragment;->mFragmentView:Landroid/view/View;
    invoke-static {v2}, Lcom/airbnb/android/fragments/ROProfileFragment;->access$200(Lcom/airbnb/android/fragments/ROProfileFragment;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f08049f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 390
    .local v0, "padding":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 391
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 393
    .end local v0    # "padding":Landroid/view/View;
    :cond_33
    return-void
.end method
