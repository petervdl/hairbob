.class Lcom/airbnb/android/fragments/AccountSettingsFragment$4;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/AccountSettingsFragment;->setupLogOut()V
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
    .line 176
    iput-object p1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$4;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 180
    invoke-static {}, Lcom/airbnb/android/fragments/ZenDialog;->Builder()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e0088

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withBodyText(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e00b0

    const/4 v2, 0x0

    const v3, 0x7f0e0405

    const/16 v4, 0xea

    iget-object v5, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$4;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    invoke-virtual/range {v0 .. v5}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withDualButton(IIIILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$4;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    # getter for: Lcom/airbnb/android/fragments/AccountSettingsFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 184
    return-void
.end method
