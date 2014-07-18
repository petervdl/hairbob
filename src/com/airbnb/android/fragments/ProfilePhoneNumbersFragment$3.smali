.class Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$3;
.super Ljava/lang/Object;
.source "ProfilePhoneNumbersFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->handleDeletePhoneNumber()V
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
        "Lcom/airbnb/android/requests/DeletePhoneNumberRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;)V
    .registers 2

    .prologue
    .line 158
    iput-object p1, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$3;->this$0:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$3;->this$0:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 180
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/DeletePhoneNumberRequest;)V
    .registers 5
    .param p1, "response"    # Lcom/airbnb/android/requests/DeletePhoneNumberRequest;

    .prologue
    const/4 v2, 0x0

    .line 163
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$3;->this$0:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;

    # getter for: Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mVerifiedNumbers:Ljava/util/List;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->access$200(Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$3;->this$0:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;

    # getter for: Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mNumberToDelete:Lcom/airbnb/android/models/ProfilePhoneNumber;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->access$100(Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;)Lcom/airbnb/android/models/ProfilePhoneNumber;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 164
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$3;->this$0:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;

    # getter for: Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mUnverifiedNumbers:Ljava/util/List;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->access$000(Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$3;->this$0:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;

    # getter for: Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mNumberToDelete:Lcom/airbnb/android/models/ProfilePhoneNumber;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->access$100(Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;)Lcom/airbnb/android/models/ProfilePhoneNumber;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 165
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$3;->this$0:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;

    # getter for: Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mVerifiedNumberAdapter:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->access$300(Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;)Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter;->notifyDataSetChanged()V

    .line 166
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$3;->this$0:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;

    # getter for: Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mUnverifiedNumberAdapter:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->access$400(Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;)Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$ProfilePhoneNumberAdapter;->notifyDataSetChanged()V

    .line 167
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$3;->this$0:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;

    # invokes: Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->setHeadersVisibility()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->access$500(Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;)V

    .line 170
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getPhoneNumbers()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$3;->this$0:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;

    # getter for: Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mNumberToDelete:Lcom/airbnb/android/models/ProfilePhoneNumber;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->access$100(Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;)Lcom/airbnb/android/models/ProfilePhoneNumber;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 171
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$3;->this$0:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;

    # setter for: Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->mNumberToDelete:Lcom/airbnb/android/models/ProfilePhoneNumber;
    invoke-static {v0, v2}, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->access$102(Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;Lcom/airbnb/android/models/ProfilePhoneNumber;)Lcom/airbnb/android/models/ProfilePhoneNumber;

    .line 174
    new-instance v0, Lcom/airbnb/android/requests/GetActiveAccountRequest;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$3;->this$0:Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/requests/GetActiveAccountRequest;-><init>(Landroid/content/Context;Lcom/airbnb/android/requests/RequestListener;)V

    .line 175
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 158
    check-cast p1, Lcom/airbnb/android/requests/DeletePhoneNumberRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/ProfilePhoneNumbersFragment$3;->onResponse(Lcom/airbnb/android/requests/DeletePhoneNumberRequest;)V

    return-void
.end method
