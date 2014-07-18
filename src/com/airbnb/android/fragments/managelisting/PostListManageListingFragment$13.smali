.class Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$13;
.super Ljava/lang/Object;
.source "PostListManageListingFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 314
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$13;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 4

    .prologue
    .line 318
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$13;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_1f

    .line 319
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$13;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$13;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mScrollValue:I
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->access$300(Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 320
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$13;->this$0:Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 323
    :cond_1f
    const/4 v0, 0x1

    return v0
.end method
