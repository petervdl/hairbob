.class Lcom/airbnb/android/fragments/SlideUpTransparentFragment$1;
.super Ljava/lang/Object;
.source "SlideUpTransparentFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/SlideUpTransparentFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;)V
    .registers 2

    .prologue
    .line 97
    iput-object p1, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$1;->this$0:Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 8
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$1;->this$0:Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_20

    .line 107
    iget-object v0, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$1;->this$0:Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$1;->this$0:Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    # setter for: Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mContentScrollPosition:I
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->access$002(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;I)I

    .line 109
    :cond_20
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 102
    return-void
.end method
