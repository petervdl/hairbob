.class Lcom/airbnb/android/fragments/AccountSettingsFragment$16;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/AccountSettingsFragment;->saveSettings()V
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
        "Lcom/airbnb/android/requests/AccountNotificationsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/AccountSettingsFragment;Landroid/content/SharedPreferences;)V
    .registers 3

    .prologue
    .line 492
    iput-object p1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$16;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$16;->val$prefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 501
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$16;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 502
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/AccountNotificationsRequest;)V
    .registers 5
    .param p1, "response"    # Lcom/airbnb/android/requests/AccountNotificationsRequest;

    .prologue
    .line 496
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$16;->val$prefs:Landroid/content/SharedPreferences;

    iget-object v1, p1, Lcom/airbnb/android/requests/AccountNotificationsRequest;->notifications:Lcom/airbnb/android/models/NotificationSet;

    iget-object v2, p1, Lcom/airbnb/android/requests/AccountNotificationsRequest;->settings:Lcom/airbnb/android/models/Settings;

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/requests/AccountNotificationsRequest;->saveNotificationSettings(Landroid/content/SharedPreferences;Lcom/airbnb/android/models/NotificationSet;Lcom/airbnb/android/models/Settings;)V

    .line 497
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 492
    check-cast p1, Lcom/airbnb/android/requests/AccountNotificationsRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/AccountSettingsFragment$16;->onResponse(Lcom/airbnb/android/requests/AccountNotificationsRequest;)V

    return-void
.end method
