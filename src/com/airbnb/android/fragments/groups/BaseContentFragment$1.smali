.class Lcom/airbnb/android/fragments/groups/BaseContentFragment$1;
.super Ljava/lang/Object;
.source "BaseContentFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/BaseContentFragment;->fetchData()V
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
        "Lcom/airbnb/android/requests/groups/GetContentRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)V
    .registers 2

    .prologue
    .line 218
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 230
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 231
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_b

    .line 232
    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 234
    :cond_b
    sget-object v1, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v2, Lcom/airbnb/android/models/groups/GroupsEvent$GroupLoadFailedEvent;

    invoke-direct {v2}, Lcom/airbnb/android/models/groups/GroupsEvent$GroupLoadFailedEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 235
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->onDataLoadFailed()V

    .line 236
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/groups/GetContentRequest;)V
    .registers 4
    .param p1, "response"    # Lcom/airbnb/android/requests/groups/GetContentRequest;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    invoke-virtual {p1}, Lcom/airbnb/android/requests/groups/GetContentRequest;->getContent()Lcom/airbnb/android/models/groups/BaseContent;

    move-result-object v1

    # setter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$002(Lcom/airbnb/android/fragments/groups/BaseContentFragment;Lcom/airbnb/android/models/groups/BaseContent;)Lcom/airbnb/android/models/groups/BaseContent;

    .line 223
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    invoke-virtual {p1}, Lcom/airbnb/android/requests/groups/GetContentRequest;->getGroup()Lcom/airbnb/android/models/groups/Group;

    move-result-object v1

    iput-object v1, v0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    .line 224
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->onDataLoaded()V

    .line 225
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mCommentsLoaderListView:Lcom/airbnb/android/views/LoaderListView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$100(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/views/LoaderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderListView;->finishLoader()V

    .line 226
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 218
    check-cast p1, Lcom/airbnb/android/requests/groups/GetContentRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/groups/BaseContentFragment$1;->onResponse(Lcom/airbnb/android/requests/groups/GetContentRequest;)V

    return-void
.end method
