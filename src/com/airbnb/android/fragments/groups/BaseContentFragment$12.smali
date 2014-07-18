.class Lcom/airbnb/android/fragments/groups/BaseContentFragment$12;
.super Ljava/lang/Object;
.source "BaseContentFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/BaseContentFragment;->updateCommentsList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)V
    .registers 2

    .prologue
    .line 586
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$12;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 589
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$12;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 590
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_2b

    .line 591
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/groups/Comment;

    .line 592
    .local v0, "comment":Lcom/airbnb/android/models/groups/Comment;
    invoke-virtual {v0}, Lcom/airbnb/android/models/groups/Comment;->isSaved()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 593
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$12;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    iget-object v3, v3, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$12;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;
    invoke-static {v4}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$000(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/models/groups/BaseContent;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/airbnb/android/models/groups/GroupsUri;->newCommentDrilldownUri(Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/BaseContent;Lcom/airbnb/android/models/groups/Comment;)Lcom/airbnb/android/models/groups/GroupsUri;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/airbnb/android/activities/groups/GroupCommentActivity;->intentForUri(Landroid/content/Context;Lcom/airbnb/android/models/groups/GroupsUri;)Landroid/content/Intent;

    move-result-object v2

    .line 594
    .local v2, "showCommentIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$12;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    invoke-virtual {v3, v2}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->startActivity(Landroid/content/Intent;)V

    .line 597
    .end local v0    # "comment":Lcom/airbnb/android/models/groups/Comment;
    .end local v2    # "showCommentIntent":Landroid/content/Intent;
    :cond_2b
    return-void
.end method
