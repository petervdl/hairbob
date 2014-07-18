.class Lcom/airbnb/android/fragments/AccountSettingsFragment$10;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/AccountSettingsFragment;->setupHostPayoutMethod()V
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
    .line 322
    iput-object p1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$10;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 326
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$10;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$10;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/activities/PayoutActivity;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 327
    return-void
.end method
