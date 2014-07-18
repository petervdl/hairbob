.class Lcom/airbnb/android/fragments/AccountSettingsFragment$5;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/AccountSettingsFragment;->getGroupsPushNotifications()V
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
        "Lcom/airbnb/android/requests/groups/GetPushNotificationSettingsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/AccountSettingsFragment;)V
    .registers 2

    .prologue
    .line 190
    iput-object p1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$5;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 201
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/groups/GetPushNotificationSettingsRequest;)V
    .registers 4
    .param p1, "response"    # Lcom/airbnb/android/requests/groups/GetPushNotificationSettingsRequest;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$5;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    invoke-virtual {p1}, Lcom/airbnb/android/requests/groups/GetPushNotificationSettingsRequest;->isGroupsEnabled()Z

    move-result v1

    # setter for: Lcom/airbnb/android/fragments/AccountSettingsFragment;->mGroupsNotifsEnabled:Z
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->access$102(Lcom/airbnb/android/fragments/AccountSettingsFragment;Z)Z

    .line 195
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$5;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mGroupsPushNotifsCheck:Lcom/airbnb/android/views/GroupedCheck;

    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$5;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    # getter for: Lcom/airbnb/android/fragments/AccountSettingsFragment;->mGroupsNotifsEnabled:Z
    invoke-static {v1}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->access$100(Lcom/airbnb/android/fragments/AccountSettingsFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCheck;->setChecked(Z)V

    .line 196
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 190
    check-cast p1, Lcom/airbnb/android/requests/groups/GetPushNotificationSettingsRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/AccountSettingsFragment$5;->onResponse(Lcom/airbnb/android/requests/groups/GetPushNotificationSettingsRequest;)V

    return-void
.end method
