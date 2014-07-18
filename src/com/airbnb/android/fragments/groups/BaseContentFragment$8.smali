.class Lcom/airbnb/android/fragments/groups/BaseContentFragment$8;
.super Ljava/lang/Object;
.source "BaseContentFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/BaseContentFragment;->followContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/android/requests/RequestListener",
        "<",
        "Lcom/airbnb/android/requests/groups/FollowContentRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)V
    .registers 2

    .prologue
    .line 479
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$8;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 496
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$8;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 497
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$8;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 499
    :cond_11
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/groups/FollowContentRequest;)V
    .registers 7
    .param p1, "response"    # Lcom/airbnb/android/requests/groups/FollowContentRequest;

    .prologue
    const/4 v3, 0x1

    .line 482
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$8;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mUnfollow:Landroid/view/MenuItem;
    invoke-static {v2}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$1500(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 483
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$8;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 484
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_21

    .line 485
    const v2, 0x7f0e027c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 486
    .local v1, "successToast":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 488
    .end local v1    # "successToast":Ljava/lang/String;
    :cond_21
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$8;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;
    invoke-static {v2}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$000(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/models/groups/BaseContent;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/airbnb/android/models/groups/BaseContent;->setIsFollowedBy(Z)V

    .line 489
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$8;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    iget-object v2, v2, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-virtual {v2, v3}, Lcom/airbnb/android/models/groups/Group;->setHasFollows(Z)V

    .line 490
    sget-object v2, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$8;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->getContentLoadedEvent()Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$1300(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 491
    sget-object v2, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v3, Lcom/airbnb/android/models/groups/GroupsEvent$GroupLoadedEvent;

    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$8;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    iget-object v4, v4, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-direct {v3, v4}, Lcom/airbnb/android/models/groups/GroupsEvent$GroupLoadedEvent;-><init>(Lcom/airbnb/android/models/groups/Group;)V

    invoke-virtual {v2, v3}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 492
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 479
    check-cast p1, Lcom/airbnb/android/requests/groups/FollowContentRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/groups/BaseContentFragment$8;->onResponse(Lcom/airbnb/android/requests/groups/FollowContentRequest;)V

    return-void
.end method
