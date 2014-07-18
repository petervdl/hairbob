.class Lcom/airbnb/android/fragments/groups/NewContentFragment$8;
.super Ljava/lang/Object;
.source "NewContentFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/NewContentFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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
        "Lcom/airbnb/android/requests/groups/CreateContentRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/NewContentFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/NewContentFragment;)V
    .registers 2

    .prologue
    .line 400
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment$8;->this$0:Lcom/airbnb/android/fragments/groups/NewContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 416
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment$8;->this$0:Lcom/airbnb/android/fragments/groups/NewContentFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 417
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/groups/CreateContentRequest;)V
    .registers 6
    .param p1, "response"    # Lcom/airbnb/android/requests/groups/CreateContentRequest;

    .prologue
    .line 404
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment$8;->this$0:Lcom/airbnb/android/fragments/groups/NewContentFragment;

    invoke-virtual {p1}, Lcom/airbnb/android/requests/groups/CreateContentRequest;->getContentAsFeedItem()Lcom/airbnb/android/models/groups/FeedItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/groups/FeedItem;->getActualContent()Lcom/airbnb/android/models/groups/BaseContent;

    move-result-object v2

    # setter for: Lcom/airbnb/android/fragments/groups/NewContentFragment;->mBaseContent:Lcom/airbnb/android/models/groups/BaseContent;
    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->access$1002(Lcom/airbnb/android/fragments/groups/NewContentFragment;Lcom/airbnb/android/models/groups/BaseContent;)Lcom/airbnb/android/models/groups/BaseContent;

    .line 405
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment$8;->this$0:Lcom/airbnb/android/fragments/groups/NewContentFragment;

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment$8;->this$0:Lcom/airbnb/android/fragments/groups/NewContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/NewContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v2}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->access$100(Lcom/airbnb/android/fragments/groups/NewContentFragment;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/airbnb/android/requests/groups/CreateContentRequest;->updateGroup(Lcom/airbnb/android/models/groups/Group;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v2

    # setter for: Lcom/airbnb/android/fragments/groups/NewContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->access$102(Lcom/airbnb/android/fragments/groups/NewContentFragment;Lcom/airbnb/android/models/groups/Group;)Lcom/airbnb/android/models/groups/Group;

    .line 406
    sget-object v1, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v2, Lcom/airbnb/android/models/groups/GroupsEvent$GroupLoadedEvent;

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment$8;->this$0:Lcom/airbnb/android/fragments/groups/NewContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/NewContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->access$100(Lcom/airbnb/android/fragments/groups/NewContentFragment;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/airbnb/android/models/groups/GroupsEvent$GroupLoadedEvent;-><init>(Lcom/airbnb/android/models/groups/Group;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 407
    sget-object v1, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v2, Lcom/airbnb/android/fragments/groups/NewContentFragment$ContentCreatedEvent;

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment$8;->this$0:Lcom/airbnb/android/fragments/groups/NewContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/NewContentFragment;->mBaseContent:Lcom/airbnb/android/models/groups/BaseContent;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->access$1000(Lcom/airbnb/android/fragments/groups/NewContentFragment;)Lcom/airbnb/android/models/groups/BaseContent;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/airbnb/android/fragments/groups/NewContentFragment$ContentCreatedEvent;-><init>(Lcom/airbnb/android/models/groups/BaseContent;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 408
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment$8;->this$0:Lcom/airbnb/android/fragments/groups/NewContentFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 409
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_4d

    .line 410
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment$8;->this$0:Lcom/airbnb/android/fragments/groups/NewContentFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 412
    :cond_4d
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 400
    check-cast p1, Lcom/airbnb/android/requests/groups/CreateContentRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/groups/NewContentFragment$8;->onResponse(Lcom/airbnb/android/requests/groups/CreateContentRequest;)V

    return-void
.end method
