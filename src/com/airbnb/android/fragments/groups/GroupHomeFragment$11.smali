.class Lcom/airbnb/android/fragments/groups/GroupHomeFragment$11;
.super Ljava/lang/Object;
.source "GroupHomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->initializePostingBar(Landroid/view/View;)V
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
    .line 529
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$11;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 532
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$11;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 533
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_17

    .line 534
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$11;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v2}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$100(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/airbnb/android/activities/groups/NewContentActivity;->intentForShow(Landroid/content/Context;Lcom/airbnb/android/models/groups/Group;)Landroid/content/Intent;

    move-result-object v1

    .line 535
    .local v1, "newContentIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$11;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    invoke-virtual {v2, v1}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->startActivity(Landroid/content/Intent;)V

    .line 537
    .end local v1    # "newContentIntent":Landroid/content/Intent;
    :cond_17
    return-void
.end method
