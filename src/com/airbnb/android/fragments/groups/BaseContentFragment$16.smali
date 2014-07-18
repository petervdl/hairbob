.class Lcom/airbnb/android/fragments/groups/BaseContentFragment$16;
.super Ljava/lang/Object;
.source "BaseContentFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/BaseContentFragment;->getLikeContentRequestListener()Lcom/airbnb/android/requests/RequestListener;
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
        "Lcom/airbnb/android/requests/groups/LikeContentRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)V
    .registers 2

    .prologue
    .line 729
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$16;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 740
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$16;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mLikeCountButton:Lcom/airbnb/android/views/groups/IconCountButton;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$1800(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/views/groups/IconCountButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/groups/IconCountButton;->setEnabled(Z)V

    .line 741
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$16;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 742
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/groups/LikeContentRequest;)V
    .registers 4
    .param p1, "response"    # Lcom/airbnb/android/requests/groups/LikeContentRequest;

    .prologue
    .line 733
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$16;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$16;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$000(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/models/groups/BaseContent;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/airbnb/android/requests/groups/LikeContentRequest;->updateComment(Lcom/airbnb/android/models/groups/BaseContent;)Lcom/airbnb/android/models/groups/BaseContent;

    move-result-object v1

    # setter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$002(Lcom/airbnb/android/fragments/groups/BaseContentFragment;Lcom/airbnb/android/models/groups/BaseContent;)Lcom/airbnb/android/models/groups/BaseContent;

    .line 734
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$16;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mLikeCountButton:Lcom/airbnb/android/views/groups/IconCountButton;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$1800(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/views/groups/IconCountButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/groups/IconCountButton;->setEnabled(Z)V

    .line 735
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$16;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->getContentLoadedEvent()Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$1300(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 736
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 729
    check-cast p1, Lcom/airbnb/android/requests/groups/LikeContentRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/groups/BaseContentFragment$16;->onResponse(Lcom/airbnb/android/requests/groups/LikeContentRequest;)V

    return-void
.end method
