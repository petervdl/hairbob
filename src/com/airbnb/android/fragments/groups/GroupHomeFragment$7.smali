.class Lcom/airbnb/android/fragments/groups/GroupHomeFragment$7;
.super Ljava/lang/Object;
.source "GroupHomeFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->updateView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V
    .registers 2

    .prologue
    .line 449
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$7;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 7
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 458
    add-int v0, p2, p3

    .line 460
    .local v0, "lastItem":I
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$7;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->handleTabScroll()V
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$1300(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V

    .line 462
    if-ne v0, p4, :cond_e

    .line 463
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$7;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->onScrollBottom()V
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$1400(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V

    .line 465
    :cond_e
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 454
    return-void
.end method
