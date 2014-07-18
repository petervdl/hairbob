.class Lcom/airbnb/android/fragments/groups/GroupHomeFragment$2;
.super Ljava/lang/Object;
.source "GroupHomeFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->findOrFetchGroup()V
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
        "Lcom/airbnb/android/requests/groups/GetGroupRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V
    .registers 2

    .prologue
    .line 246
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$2;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 257
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$2;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 258
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_b

    .line 259
    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 261
    :cond_b
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$2;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->onGroupLoadFailed()V

    .line 262
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/groups/GetGroupRequest;)V
    .registers 4
    .param p1, "response"    # Lcom/airbnb/android/requests/groups/GetGroupRequest;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$2;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    invoke-virtual {p1}, Lcom/airbnb/android/requests/groups/GetGroupRequest;->getGroup()Lcom/airbnb/android/models/groups/Group;

    move-result-object v1

    # setter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$102(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;Lcom/airbnb/android/models/groups/Group;)Lcom/airbnb/android/models/groups/Group;

    .line 251
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$2;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->onGroupLoaded()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$200(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V

    .line 252
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$2;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->finishLoading()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$300(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V

    .line 253
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 246
    check-cast p1, Lcom/airbnb/android/requests/groups/GetGroupRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$2;->onResponse(Lcom/airbnb/android/requests/groups/GetGroupRequest;)V

    return-void
.end method
