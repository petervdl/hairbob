.class Lcom/airbnb/android/fragments/AccountSettingsFragment$7;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/AccountSettingsFragment;->setupGroupsNotifications()V
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
    .line 249
    iput-object p1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$7;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 253
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$7;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    # setter for: Lcom/airbnb/android/fragments/AccountSettingsFragment;->mGroupsNotifsEnabled:Z
    invoke-static {v0, p2}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->access$102(Lcom/airbnb/android/fragments/AccountSettingsFragment;Z)Z

    .line 254
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$7;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    const/4 v1, 0x1

    # setter for: Lcom/airbnb/android/fragments/AccountSettingsFragment;->mServersideSettingsChanged:Z
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->access$302(Lcom/airbnb/android/fragments/AccountSettingsFragment;Z)Z

    .line 255
    return-void
.end method
