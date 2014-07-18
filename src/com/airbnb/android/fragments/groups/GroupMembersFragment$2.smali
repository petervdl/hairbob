.class Lcom/airbnb/android/fragments/groups/GroupMembersFragment$2;
.super Ljava/lang/Object;
.source "GroupMembersFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/GroupMembersFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/GroupMembersFragment;)V
    .registers 2

    .prologue
    .line 88
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment$2;->this$0:Lcom/airbnb/android/fragments/groups/GroupMembersFragment;

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
    .line 97
    add-int v0, p2, p3

    .line 99
    .local v0, "lastItem":I
    if-ne v0, p4, :cond_9

    .line 100
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment$2;->this$0:Lcom/airbnb/android/fragments/groups/GroupMembersFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->onScrollBottom()V
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->access$200(Lcom/airbnb/android/fragments/groups/GroupMembersFragment;)V

    .line 102
    :cond_9
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 93
    return-void
.end method
