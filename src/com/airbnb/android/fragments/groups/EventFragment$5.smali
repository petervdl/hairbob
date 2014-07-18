.class Lcom/airbnb/android/fragments/groups/EventFragment$5;
.super Ljava/lang/Object;
.source "EventFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/EventFragment;->getEventRegistrationRequestListener()Lcom/airbnb/android/requests/RequestListener;
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
        "Lcom/airbnb/android/requests/groups/EventRegistrationRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/EventFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/EventFragment;)V
    .registers 2

    .prologue
    .line 260
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/EventFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/EventFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    const/4 v1, 0x1

    .line 275
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/EventFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/EventFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/EventFragment;->mJoinButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/EventFragment;->access$100(Lcom/airbnb/android/fragments/groups/EventFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 276
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/EventFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/EventFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/EventFragment;->mUnjoinButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/EventFragment;->access$200(Lcom/airbnb/android/fragments/groups/EventFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 277
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/EventFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/EventFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/groups/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 278
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/groups/EventRegistrationRequest;)V
    .registers 6
    .param p1, "response"    # Lcom/airbnb/android/requests/groups/EventRegistrationRequest;

    .prologue
    const/4 v2, 0x1

    .line 264
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/EventFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/EventFragment;

    invoke-virtual {p1}, Lcom/airbnb/android/requests/groups/EventRegistrationRequest;->getUpdatedContent()Lcom/airbnb/android/models/groups/Event;

    move-result-object v1

    # setter for: Lcom/airbnb/android/fragments/groups/EventFragment;->mEvent:Lcom/airbnb/android/models/groups/Event;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/groups/EventFragment;->access$002(Lcom/airbnb/android/fragments/groups/EventFragment;Lcom/airbnb/android/models/groups/Event;)Lcom/airbnb/android/models/groups/Event;

    .line 265
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/EventFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/EventFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/EventFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/EventFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/EventFragment;->mEvent:Lcom/airbnb/android/models/groups/Event;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/EventFragment;->access$000(Lcom/airbnb/android/fragments/groups/EventFragment;)Lcom/airbnb/android/models/groups/Event;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/groups/EventFragment;->updateContent(Lcom/airbnb/android/models/groups/BaseContent;)V

    .line 266
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/EventFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/EventFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/EventFragment;->updateRsvps()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/EventFragment;->access$400(Lcom/airbnb/android/fragments/groups/EventFragment;)V

    .line 267
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/EventFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/EventFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/EventFragment;->mJoinButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/EventFragment;->access$100(Lcom/airbnb/android/fragments/groups/EventFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 268
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/EventFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/EventFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/EventFragment;->mUnjoinButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/EventFragment;->access$200(Lcom/airbnb/android/fragments/groups/EventFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 269
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/EventFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/EventFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/groups/EventFragment;->updateView()V

    .line 270
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v1, Lcom/airbnb/android/models/groups/GroupsEvent$EventLoadedEvent;

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/EventFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/EventFragment;

    iget-object v2, v2, Lcom/airbnb/android/fragments/groups/EventFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/EventFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/EventFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/EventFragment;->mEvent:Lcom/airbnb/android/models/groups/Event;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/EventFragment;->access$000(Lcom/airbnb/android/fragments/groups/EventFragment;)Lcom/airbnb/android/models/groups/Event;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/airbnb/android/models/groups/GroupsEvent$EventLoadedEvent;-><init>(Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/BaseContent;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 271
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 260
    check-cast p1, Lcom/airbnb/android/requests/groups/EventRegistrationRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/groups/EventFragment$5;->onResponse(Lcom/airbnb/android/requests/groups/EventRegistrationRequest;)V

    return-void
.end method
