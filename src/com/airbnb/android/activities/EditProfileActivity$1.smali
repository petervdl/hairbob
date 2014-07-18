.class Lcom/airbnb/android/activities/EditProfileActivity$1;
.super Ljava/lang/Object;
.source "EditProfileActivity.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/EditProfileActivity;->doneEditName(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/airbnb/android/activities/EditProfileActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/EditProfileActivity;)V
    .registers 2

    .prologue
    .line 97
    iput-object p1, p0, Lcom/airbnb/android/activities/EditProfileActivity$1;->this$0:Lcom/airbnb/android/activities/EditProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 9
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    const/4 v6, 0x0

    .line 108
    iget-object v0, p0, Lcom/airbnb/android/activities/EditProfileActivity$1;->this$0:Lcom/airbnb/android/activities/EditProfileActivity;

    iget-object v1, p0, Lcom/airbnb/android/activities/EditProfileActivity$1;->this$0:Lcom/airbnb/android/activities/EditProfileActivity;

    const v2, 0x7f0e0183

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/airbnb/android/activities/EditProfileActivity$1;->this$0:Lcom/airbnb/android/activities/EditProfileActivity;

    sget-object v5, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->Name:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    invoke-virtual {v5}, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->getTitleId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/airbnb/android/activities/EditProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/activities/EditProfileActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 109
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/EditProfileRequest;)V
    .registers 4
    .param p1, "response"    # Lcom/airbnb/android/requests/EditProfileRequest;

    .prologue
    .line 101
    invoke-static {p1}, Lcom/airbnb/android/utils/UserProfileUtils;->updateCurrentUser(Lcom/airbnb/android/requests/EditProfileRequest;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 102
    iget-object v0, p0, Lcom/airbnb/android/activities/EditProfileActivity$1;->this$0:Lcom/airbnb/android/activities/EditProfileActivity;

    sget-object v1, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->Name:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    # invokes: Lcom/airbnb/android/activities/EditProfileActivity;->onProfileUpdated(Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;)V
    invoke-static {v0, v1}, Lcom/airbnb/android/activities/EditProfileActivity;->access$000(Lcom/airbnb/android/activities/EditProfileActivity;Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;)V

    .line 104
    :cond_d
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 97
    check-cast p1, Lcom/airbnb/android/requests/EditProfileRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/activities/EditProfileActivity$1;->onResponse(Lcom/airbnb/android/requests/EditProfileRequest;)V

    return-void
.end method
