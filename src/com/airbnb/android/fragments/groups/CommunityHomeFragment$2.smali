.class Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$2;
.super Ljava/lang/Object;
.source "CommunityHomeFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)V
    .registers 2

    .prologue
    .line 130
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$2;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

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
    .line 139
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$2;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mEnableInfiniteScroll:Z
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$100(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 140
    add-int v0, p2, p3

    .line 142
    .local v0, "lastItem":I
    if-ne v0, p4, :cond_11

    .line 143
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$2;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->onScrollBottom()V
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$200(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)V

    .line 146
    .end local v0    # "lastItem":I
    :cond_11
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 135
    return-void
.end method
