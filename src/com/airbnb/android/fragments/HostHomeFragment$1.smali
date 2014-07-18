.class Lcom/airbnb/android/fragments/HostHomeFragment$1;
.super Ljava/lang/Object;
.source "HostHomeFragment.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/HostHomeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/HostHomeFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/HostHomeFragment;)V
    .registers 2

    .prologue
    .line 130
    iput-object p1, p0, Lcom/airbnb/android/fragments/HostHomeFragment$1;->this$0:Lcom/airbnb/android/fragments/HostHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .registers 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/airbnb/android/fragments/HostHomeFragment$1;->this$0:Lcom/airbnb/android/fragments/HostHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/HostHomeFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;
    invoke-static {v0}, Lcom/airbnb/android/fragments/HostHomeFragment;->access$000(Lcom/airbnb/android/fragments/HostHomeFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 134
    iget-object v0, p0, Lcom/airbnb/android/fragments/HostHomeFragment$1;->this$0:Lcom/airbnb/android/fragments/HostHomeFragment;

    # invokes: Lcom/airbnb/android/fragments/HostHomeFragment;->refreshData()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/HostHomeFragment;->access$100(Lcom/airbnb/android/fragments/HostHomeFragment;)V

    .line 135
    return-void
.end method
