.class Lcom/airbnb/android/fragments/AccountSettingsFragment$6;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/AccountSettingsFragment;->setupPushNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/AccountSettingsFragment;)V
    .registers 2

    .prologue
    .line 228
    iput-object p1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$6;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 7
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 233
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$6;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    # setter for: Lcom/airbnb/android/fragments/AccountSettingsFragment;->mNotifsEnabled:Z
    invoke-static {v0, p2}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->access$202(Lcom/airbnb/android/fragments/AccountSettingsFragment;Z)Z

    .line 234
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$6;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    const/4 v3, 0x1

    # setter for: Lcom/airbnb/android/fragments/AccountSettingsFragment;->mServersideSettingsChanged:Z
    invoke-static {v0, v3}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->access$302(Lcom/airbnb/android/fragments/AccountSettingsFragment;Z)Z

    .line 236
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$6;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    iget-object v3, v0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mGroupsPushNotifsCheck:Lcom/airbnb/android/views/GroupedCheck;

    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$6;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    # getter for: Lcom/airbnb/android/fragments/AccountSettingsFragment;->mNotifsEnabled:Z
    invoke-static {v0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->access$200(Lcom/airbnb/android/fragments/AccountSettingsFragment;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$6;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    # getter for: Lcom/airbnb/android/fragments/AccountSettingsFragment;->mGroupsEnabled:Z
    invoke-static {v0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->access$400(Lcom/airbnb/android/fragments/AccountSettingsFragment;)Z

    move-result v0

    if-eqz v0, :cond_36

    move v0, v1

    :goto_23
    invoke-virtual {v3, v0}, Lcom/airbnb/android/views/GroupedCheck;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$6;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mPushNotifsSoundCheck:Lcom/airbnb/android/views/GroupedCheck;

    iget-object v3, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$6;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    # getter for: Lcom/airbnb/android/fragments/AccountSettingsFragment;->mNotifsEnabled:Z
    invoke-static {v3}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->access$200(Lcom/airbnb/android/fragments/AccountSettingsFragment;)Z

    move-result v3

    if-eqz v3, :cond_38

    :goto_32
    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCheck;->setVisibility(I)V

    .line 238
    return-void

    :cond_36
    move v0, v2

    .line 236
    goto :goto_23

    :cond_38
    move v1, v2

    .line 237
    goto :goto_32
.end method
