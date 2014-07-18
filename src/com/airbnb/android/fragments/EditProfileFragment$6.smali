.class Lcom/airbnb/android/fragments/EditProfileFragment$6;
.super Ljava/lang/Object;
.source "EditProfileFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/EditProfileFragment;->updateProfile(Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;Ljava/lang/String;)V
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
        "Lcom/airbnb/android/requests/EditProfileRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/EditProfileFragment;

.field final synthetic val$section:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/EditProfileFragment;Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;)V
    .registers 3

    .prologue
    .line 266
    iput-object p1, p0, Lcom/airbnb/android/fragments/EditProfileFragment$6;->this$0:Lcom/airbnb/android/fragments/EditProfileFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/EditProfileFragment$6;->val$section:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 9
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    const/4 v6, 0x0

    .line 284
    iget-object v0, p0, Lcom/airbnb/android/fragments/EditProfileFragment$6;->this$0:Lcom/airbnb/android/fragments/EditProfileFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/EditProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/EditProfileFragment$6;->this$0:Lcom/airbnb/android/fragments/EditProfileFragment;

    const v2, 0x7f0e0183

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/airbnb/android/fragments/EditProfileFragment$6;->this$0:Lcom/airbnb/android/fragments/EditProfileFragment;

    iget-object v5, p0, Lcom/airbnb/android/fragments/EditProfileFragment$6;->val$section:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    invoke-virtual {v5}, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->getTitleId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/airbnb/android/fragments/EditProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/fragments/EditProfileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 285
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/EditProfileRequest;)V
    .registers 5
    .param p1, "response"    # Lcom/airbnb/android/requests/EditProfileRequest;

    .prologue
    .line 269
    invoke-static {p1}, Lcom/airbnb/android/utils/UserProfileUtils;->updateCurrentUser(Lcom/airbnb/android/requests/EditProfileRequest;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 271
    sget-object v0, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->PRIVATE_DETAILS:Ljava/util/EnumSet;

    iget-object v1, p0, Lcom/airbnb/android/fragments/EditProfileFragment$6;->val$section:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 272
    iget-object v0, p0, Lcom/airbnb/android/fragments/EditProfileFragment$6;->this$0:Lcom/airbnb/android/fragments/EditProfileFragment;

    # getter for: Lcom/airbnb/android/fragments/EditProfileFragment;->mPrivateSectionsAdapter:Lcom/airbnb/android/adapters/EditProfileDetailsAdapter;
    invoke-static {v0}, Lcom/airbnb/android/fragments/EditProfileFragment;->access$200(Lcom/airbnb/android/fragments/EditProfileFragment;)Lcom/airbnb/android/adapters/EditProfileDetailsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/EditProfileDetailsAdapter;->notifyDataSetChanged()V

    .line 278
    :cond_19
    :goto_19
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v1, Lcom/airbnb/android/events/ProfileUpdatedEvent;

    iget-object v2, p0, Lcom/airbnb/android/fragments/EditProfileFragment$6;->val$section:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    invoke-direct {v1, v2}, Lcom/airbnb/android/events/ProfileUpdatedEvent;-><init>(Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 280
    :cond_25
    return-void

    .line 274
    :cond_26
    sget-object v0, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->OPTIONAL_DETAILS:Ljava/util/EnumSet;

    iget-object v1, p0, Lcom/airbnb/android/fragments/EditProfileFragment$6;->val$section:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 275
    iget-object v0, p0, Lcom/airbnb/android/fragments/EditProfileFragment$6;->this$0:Lcom/airbnb/android/fragments/EditProfileFragment;

    # getter for: Lcom/airbnb/android/fragments/EditProfileFragment;->mOptionalSectionsAdapter:Lcom/airbnb/android/adapters/EditProfileDetailsAdapter;
    invoke-static {v0}, Lcom/airbnb/android/fragments/EditProfileFragment;->access$600(Lcom/airbnb/android/fragments/EditProfileFragment;)Lcom/airbnb/android/adapters/EditProfileDetailsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/EditProfileDetailsAdapter;->notifyDataSetChanged()V

    goto :goto_19
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 266
    check-cast p1, Lcom/airbnb/android/requests/EditProfileRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/EditProfileFragment$6;->onResponse(Lcom/airbnb/android/requests/EditProfileRequest;)V

    return-void
.end method
