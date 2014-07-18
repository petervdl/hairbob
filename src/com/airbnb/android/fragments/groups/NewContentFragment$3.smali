.class Lcom/airbnb/android/fragments/groups/NewContentFragment$3;
.super Ljava/lang/Object;
.source "NewContentFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/NewContentFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/NewContentFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/NewContentFragment;)V
    .registers 2

    .prologue
    .line 267
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/NewContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 270
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/NewContentFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 271
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_23

    .line 272
    const-string/jumbo v2, "tap_photos"

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/NewContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/NewContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->access$100(Lcom/airbnb/android/fragments/groups/NewContentFragment;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackNewPost(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;)V

    .line 273
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/NewContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/NewContentFragment;->mContent:Lcom/airbnb/android/models/groups/Content;
    invoke-static {v2}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->access$300(Lcom/airbnb/android/fragments/groups/NewContentFragment;)Lcom/airbnb/android/models/groups/Content;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/airbnb/android/activities/groups/ManagePostPhotosActivity;->intentForContent(Landroid/content/Context;Lcom/airbnb/android/models/groups/Content;)Landroid/content/Intent;

    move-result-object v1

    .line 274
    .local v1, "newContentIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/NewContentFragment;

    invoke-virtual {v2, v1}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->startActivity(Landroid/content/Intent;)V

    .line 276
    .end local v1    # "newContentIntent":Landroid/content/Intent;
    :cond_23
    return-void
.end method
